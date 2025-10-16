"! <p class="shorttext synchronized" lang="en">Read Product and Classification from S/4 PCE</p>
CLASS zcl_sapdev_prodclas_read DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_rap_query_provider.

    TYPES t_business_data_external TYPE TABLE OF ZCE_ProductClassif.

    TYPES t_product_range TYPE RANGE OF zsc_api_clfn_product=>tys_a_clfn_product_type.
    TYPES t_business_data TYPE zsc_api_clfn_product=>tyt_a_clfn_product_type.

    METHODS get_products
      IMPORTING filter_conditions TYPE if_rap_query_filter=>tt_name_range_pairs OPTIONAL
                !top              TYPE i                                        OPTIONAL
                !skip             TYPE i                                        OPTIONAL
      EXPORTING business_data     TYPE t_business_data
      RAISING   /iwbep/cx_cp_remote
                /iwbep/cx_gateway
                cx_web_http_client_error
                cx_http_dest_provider_error.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_sapdev_prodclas_read IMPLEMENTATION.
  METHOD if_rap_query_provider~select.
    DATA business_data          TYPE t_business_data.
    DATA business_data_external TYPE t_business_data_external.

    DATA(top)  = io_request->get_paging( )->get_page_size( ).
    DATA(skip) = io_request->get_paging( )->get_offset( ).
    DATA(requested_fields) = io_request->get_requested_elements( ).
    DATA(sort_order) = io_request->get_sort_elements( ).

    TRY.
        DATA(filter_condition) = io_request->get_filter( )->get_as_ranges( ).

        get_products( EXPORTING filter_conditions = filter_condition
                                top               = CONV i( top )
                                skip              = CONV i( skip )
                      IMPORTING business_data     = business_data ).

        business_data_external = CORRESPONDING #( business_data
                                          MAPPING Product = product
                                                  ProductType = product_type
                                                  ProductGroup = product_group ).

        io_response->set_total_number_of_records( lines( business_data_external ) ).
        io_response->set_data( business_data_external ).

      CATCH cx_root INTO DATA(exception).
        " TODO: variable is assigned but never used (ABAP cleaner)
        DATA(exception_message) = cl_message_helper=>get_latest_t100_exception( exception )->if_message~get_longtext( ).
    ENDTRY.
  ENDMETHOD.



  METHOD if_oo_adt_classrun~main.

    DATA business_data     TYPE t_business_data.
    DATA filter_conditions TYPE if_rap_query_filter=>tt_name_range_pairs.
    DATA ranges_table      TYPE if_rap_query_filter=>tt_range_option.

    ranges_table = VALUE #( (  sign = 'I' option = 'GE' low = 'TG-11' ) ).
    filter_conditions = VALUE #( ( name = 'PRODUCT'  range = ranges_table ) ).

    TRY.
        get_products( EXPORTING filter_conditions = filter_conditions
                                top               = 3
                                skip              = 1
                      IMPORTING business_data     = business_data ).
        out->write( business_data ).
      CATCH cx_root INTO DATA(exception).
        out->write( cl_message_helper=>get_latest_t100_exception( exception )->if_message~get_longtext( ) ).
    ENDTRY.

  ENDMETHOD.

  METHOD get_products.
    DATA filter_factory     TYPE REF TO /iwbep/if_cp_filter_factory.
    DATA filter_node        TYPE REF TO /iwbep/if_cp_filter_node.
    DATA root_filter_node   TYPE REF TO /iwbep/if_cp_filter_node.

    DATA http_client        TYPE REF TO if_web_http_client.
    DATA odata_client_proxy TYPE REF TO /iwbep/if_cp_client_proxy.
    DATA read_list_request  TYPE REF TO /iwbep/if_cp_request_read_list.
    DATA read_list_response TYPE REF TO /iwbep/if_cp_response_read_lst.

    DATA(http_destination) = cl_http_destination_provider=>create_by_comm_arrangement(
                                 comm_scenario = 'ZBTP_OTI_SAP_COM_0309' ).

    http_client = cl_web_http_client_manager=>create_by_http_destination( http_destination ).

    odata_client_proxy = /iwbep/cl_cp_factory_remote=>create_v2_remote_proxy(
                             is_proxy_model_key       = VALUE #( repository_id       = 'DEFAULT'
                                                                 proxy_model_id      = 'ZSC_API_CLFN_PRODUCT'
                                                                 proxy_model_version = '0001' )
                             io_http_client           = http_client
                             iv_relative_service_root = '' ).

    " Navigate to the resource and create a request for the read operation
    read_list_request = odata_client_proxy->create_resource_for_entity_set( 'A_CLFN_PRODUCT' )->create_request_for_read( ).

    " Create the filter tree
    filter_factory = read_list_request->create_filter_factory( ).
    LOOP AT filter_conditions INTO DATA(filter_condition).
      filter_node = filter_factory->create_by_range( iv_property_path = filter_condition-name
                                                     it_range         = filter_condition-range ).
      IF root_filter_node IS INITIAL.
        root_filter_node = filter_node.
      ELSE.
        root_filter_node = root_filter_node->and( filter_node ).
      ENDIF.
    ENDLOOP.

    IF root_filter_node IS NOT INITIAL.
      read_list_request->set_filter( root_filter_node ).
    ENDIF.

    IF top > 0.
      read_list_request->set_top( top ).
    ENDIF.

    read_list_request->set_skip( skip ).

    " Execute the request and retrieve the business data
    read_list_response = read_list_request->execute( ).
    read_list_response->get_business_data( IMPORTING et_business_data = business_data ).
  ENDMETHOD.

ENDCLASS.
