CLASS lhc_Printer DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    CONSTANTS co_bdef_name TYPE abp_root_entity_name VALUE 'ZI_SAPDEV_3DPRINTER_EN'.

    CONSTANTS:
      BEGIN OF: co_nr_check_return_code,
        out_of_range    TYPE cl_numberrange_runtime=>nr_returncode VALUE 'X',
        length_exceeded TYPE cl_numberrange_runtime=>nr_returncode VALUE 'L',
      END OF: co_nr_check_return_code.

    CONSTANTS co_nro_printer      TYPE cl_numberrange_runtime=>nr_object   VALUE 'Z3DPEN'.
    CONSTANTS co_nriv_printer_ext TYPE cl_numberrange_runtime=>nr_interval VALUE '1'.
    CONSTANTS co_nriv_printer_int TYPE cl_numberrange_runtime=>nr_interval VALUE '2'.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR Printer RESULT result.

    METHODS earlynumbering_create FOR NUMBERING
      IMPORTING entities FOR CREATE Printer.

    METHODS earlynumbering_cba_Nozzles FOR NUMBERING
      IMPORTING entities FOR CREATE Printer\_Nozzles.

    METHODS validate_mandatory_fields FOR VALIDATE ON SAVE
      IMPORTING keys FOR Printer~validate_mandatory_fields.

ENDCLASS.

CLASS lhc_Printer IMPLEMENTATION.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD earlynumbering_create.
    " The task during early numbering - where the end user provides the key - is to check for duplicate keys
    " And when only numeric formatting is allowed, then We can create an External Number Range
    " to do automatic validations whether the number is within the range.
    LOOP AT entities INTO DATA(entity) USING KEY entity.

      TRY.

          cl_numberrange_runtime=>number_check( EXPORTING nr_range_nr   = co_nriv_printer_ext
                                                          number        = CONV #( entity-PrinterId )
                                                          numeric_check = abap_true
                                                          object        = co_nro_printer
                                                          length_check  = abap_true
                                                IMPORTING returncode    = DATA(rc) ).
        CATCH cx_nr_object_not_found INTO DATA(ex_nro_not_found). " TODO: variable is assigned but never used (ABAP cleaner)
        CATCH cx_number_ranges INTO DATA(ex_nro). " TODO: variable is assigned but never used (ABAP cleaner)

          " FILL FAILED AND REPORTED HERE

      ENDTRY.

      CASE rc.
        WHEN co_nr_check_return_code-out_of_range.
          " FILL FAILED AND REPORTED HERE
          " SAP IMPLEMENTATION IS WRONG ! THEY use NUMC20 but any NUMC which is is shorter results in false positive check results. Come on SAP.
          " We can do checks by yourself.
          " or as unstable solution change your keys to NUMC20, because we do not know SAP is doing next, many bugs and SAP Notes!
          APPEND VALUE #( %cid      = entity-%cid
                          printerid = entity-printerid
                          %is_draft = entity-%is_draft )
                 TO mapped-printer.
        WHEN co_nr_check_return_code-length_exceeded.
          " FILL FAILED AND REPORTED HERE
          " SAP IMPLEMENTATION IS WRONG ! THEY use NUMC20 but any NUMC which is is shorter results in false positive check results. Come on SAP.
          " We can do checks by yourself.
          " or as unstable solution change your keys to NUMC20, because we do not know SAP is doing next, many bugs and SAP Notes!
          APPEND VALUE #( %cid      = entity-%cid
                          printerid = entity-printerid
                          %is_draft = entity-%is_draft ) TO mapped-printer.
        WHEN space.
          APPEND VALUE #( %cid      = entity-%cid
                          printerid = entity-printerid
                          %is_draft = entity-%is_draft )
                 TO mapped-printer.
      ENDCASE.

    ENDLOOP.
  ENDMETHOD.

  METHOD earlynumbering_cba_Nozzles.
    DATA max_number_active TYPE ZI_SAPDEV_Nozzle_EN-NozzleId.
    DATA max_number_draft  TYPE ZI_SAPDEV_Nozzle_EN-NozzleId.

    LOOP AT entities ASSIGNING FIELD-SYMBOL(<printer_nozzle>)
         GROUP BY <printer_nozzle>-PrinterId ASSIGNING FIELD-SYMBOL(<printer_nozzles_group>).

      CLEAR:
        max_number_active,
        max_number_draft.

      " First get the maximum nozzle item number for the given printer
      " reading both draft and non-draft

      READ ENTITIES OF ZI_SAPDEV_3DPrinter_EN IN LOCAL MODE
           ENTITY Printer BY \_Nozzles
           FIELDS ( PrinterId NozzleId )
           WITH VALUE #( ( PrinterId = <printer_nozzles_group> %is_draft = if_abap_behv=>mk-off ) )
           LINK FINAL(printer_nozzles_active).

      READ ENTITIES OF ZI_SAPDEV_3DPrinter_EN IN LOCAL MODE
           ENTITY Printer BY \_Nozzles
           FIELDS ( PrinterId NozzleId )
           WITH VALUE #( ( PrinterId = <printer_nozzles_group> %is_draft = if_abap_behv=>mk-on ) )
           LINK FINAL(printer_nozzles_draft).

      max_number_active = REDUCE #(
        INIT max_nr = max_number_active
        FOR pn IN printer_nozzles_active
        NEXT max_nr = COND ZI_SAPDEV_Nozzle_EN-NozzleId( WHEN max_nr < pn-target-NozzleId
                                                         THEN pn-target-NozzleId
                                                         ELSE max_nr ) ).

      max_number_draft = REDUCE #(
        INIT max_nr = max_number_active
        FOR pn IN printer_nozzles_draft
        NEXT max_nr = COND ZI_SAPDEV_Nozzle_EN-NozzleId( WHEN max_nr < pn-target-NozzleId
                                                         THEN pn-target-NozzleId
                                                         ELSE max_nr ) ).

      DATA(max_number_in_system) = COND ZI_SAPDEV_Nozzle_EN-NozzleId( WHEN max_number_draft > max_number_active
                                                                      THEN max_number_draft
                                                                      ELSE max_number_active ).

      " Now we allocate next nozzle item numbers.
      " Submitting sequence numbers manually is not allowed in this use case,
      " otherwise collision detection is needed.
      LOOP AT GROUP <printer_nozzles_group> ASSIGNING FIELD-SYMBOL(<printer_nozzles>).
        LOOP AT <printer_nozzles>-%target INTO DATA(new_nozzle) WHERE NozzleId IS INITIAL.
          max_number_in_system += 1.

          APPEND VALUE #( %cid      = new_nozzle-%cid
                          %is_draft = new_nozzle-%is_draft
                          printerid = <printer_nozzles>-printerid
                          nozzleid  = max_NUMBER_IN_SYSTEM )
                 TO mapped-nozzle.

        ENDLOOP.
      ENDLOOP.
    ENDLOOP.
  ENDMETHOD.

  METHOD validate_mandatory_fields.
    NEW zcl_sapdev_rap_managed_base( i_bdef_name = co_bdef_name )->validate_mandatory_fields(
                                                                  EXPORTING keys            = keys
                                                                  CHANGING  failed_entity   = failed-printer
                                                                            reported_entity = reported-printer ).
  ENDMETHOD.

ENDCLASS.
