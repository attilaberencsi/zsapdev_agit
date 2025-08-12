"! <p class="shorttext synchronized" lang="en">RAP Handler Base - Managed Scenario</p>
"! <p>Behavior handler utility to execute common operations</p>
CLASS zcl_sapdev_rap_managed_base DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES zif_sapdev_rap_managed_base.

    ALIASES fill_message_path         FOR zif_sapdev_rap_managed_base~fill_message_path.
    ALIASES validate_mandatory_fields FOR zif_sapdev_rap_managed_base~validate_mandatory_fields.

    "! <p class="shorttext synchronized">Business Object Name</p>
    DATA bdef_name TYPE abp_root_entity_name READ-ONLY.

    "! <p class="shorttext synchronized">Setup the handler class</p>
    "!
    "! @parameter i_bdef_name | <p class="shorttext synchronized">Behavior definition (BO) name</p>
    METHODS constructor
      IMPORTING i_bdef_name TYPE abp_root_entity_name.

  PROTECTED SECTION.
    "! <p class="shorttext synchronized">Retrieve parent entity instance</p>
    "!
    "! @parameter i_entity_name   | <p class="shorttext synchronized">Entity Name</p>
    "! @parameter i_instance_ref  | <p class="shorttext synchronized">Entity instance data reference</p>
    "! @parameter i_ancestor_info | <p class="shorttext synchronized">Parent entity type description</p>
    "! @parameter r_result        | <p class="shorttext synchronized">Parent entity instance</p>
    METHODS read_ancestor
      IMPORTING i_entity_name   TYPE abp_entity_name
                i_instance_ref  TYPE REF TO data
                i_ancestor_info TYPE cl_abap_behvdescr=>t_pathnode
      RETURNING VALUE(r_result) TYPE REF TO data.


  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_sapdev_rap_managed_base IMPLEMENTATION.
  METHOD constructor.
    bdef_name = i_bdef_name.
  ENDMETHOD.

  METHOD zif_sapdev_rap_managed_base~validate_mandatory_fields.
    DATA entity_name  TYPE cl_abap_behvdescr=>t_typename.
    DATA read_control TYPE REF TO data.

    FIELD-SYMBOLS <keys>                 TYPE STANDARD TABLE.
    FIELD-SYMBOLS <entities>             TYPE STANDARD TABLE.
    FIELD-SYMBOLS <permission_keys>      TYPE STANDARD TABLE.
    FIELD-SYMBOLS <instance_permissions> TYPE STANDARD TABLE.

    " Extract Entity Name
    DATA(rap_typename) = cl_abap_behvdescr=>get_abs_typename_from_data_ref( REF #( keys ) ).

    DATA(left_part_cutted) = substring_after( val = rap_typename
                                              sub = '\ENTITY=' ) ##NO_TEXT.

    entity_name = substring_before( val = left_part_cutted
                                    sub = '\' ) ##NO_TEXT.

    IF entity_name IS INITIAL.
      entity_name = left_part_cutted.
    ENDIF.

    " FETCH ENTITY INSTANCES TO BE VALIDATED

    " Create data with the required types for the READ operation

    " Read keys
    DATA(keys_ref) = cl_abap_behvdescr=>create_data( p_root = bdef_name
                                                     p_name = entity_name
                                                     p_op   = if_abap_behv=>op-r-read
                                                     p_kind = if_abap_behv=>typekind-import ).

    ASSIGN keys_ref->* TO <keys>.
    MOVE-CORRESPONDING keys TO <keys>.

    " Fill up Control structure - we fetch all fields for the validation
    " Review further performance optimization possibility here
    LOOP AT <keys> ASSIGNING FIELD-SYMBOL(<key>).
      ASSIGN COMPONENT cl_abap_behv=>co_techfield_name-control OF STRUCTURE <key> TO FIELD-SYMBOL(<%control>).

      IF sy-tabix = 1.
        CREATE DATA read_control LIKE <%control>.
        ASSIGN read_control->* TO FIELD-SYMBOL(<read_control>).
        DATA(components) = CAST cl_abap_structdescr( cl_abap_structdescr=>describe_by_data(
                                                         p_data = <%control> ) )->components.
        LOOP AT components INTO DATA(field_name).
          <read_control>-(field_name-name) = if_abap_behv=>mk-on.
        ENDLOOP.
      ENDIF.

      MOVE-CORRESPONDING <read_control> TO <%control>.
    ENDLOOP.

    " Read result
    DATA(entities_ref) = cl_abap_behvdescr=>create_data( p_root = bdef_name
                                                         p_name = entity_name
                                                         p_op   = if_abap_behv=>op-r-read
                                                         p_kind = if_abap_behv=>typekind-result ).

    " Read operations
    DATA(eml_reads) = VALUE abp_behv_retrievals_tab( ( op          = if_abap_behv=>op-r-read
                                                       entity_name = entity_name
                                                       instances   = REF data( <keys> )
                                                       full        = abap_true
                                                       results     = entities_ref ) ).

    " Read the entity instances
    READ ENTITIES OPERATIONS eml_reads FAILED FINAL(read_failed).

    IF read_failed IS NOT INITIAL AND entities_ref IS NOT BOUND.
      RETURN.
    ENDIF.

    ASSIGN entities_ref->* TO <entities>.

    IF lines( <entities> ) = 0.
      RETURN.
    ENDIF.

    " RETRIEVE WHICH FIELDS ARE MANDATORY BASED ON BDEF AND GET_INSTANCE_FEATURES()
    DATA(permission_keys_ref) = cl_abap_behvdescr=>create_data( p_name = entity_name
                                                                p_op   = cl_abap_behvdescr=>op_permission
                                                                p_kind = if_abap_behv=>typekind-import ).

    ASSIGN permission_keys_ref->* TO <permission_keys>.
    MOVE-CORRESPONDING keys TO <permission_keys>.

    DATA(permission_request_ref) = cl_abap_behvdescr=>create_data( p_name = entity_name
                                                                   p_op   = cl_abap_behvdescr=>op_permission
                                                                   p_kind = if_abap_behv=>typekind-request ).

    ASSIGN permission_request_ref->(cl_abap_behv=>co_techfield_name-field) TO FIELD-SYMBOL(<%field>).
    LOOP AT components INTO field_name.
      <%field>-(field_name-name) = if_abap_behv=>mk-on.
    ENDLOOP.

    DATA(permission_results_ref) = cl_abap_behvdescr=>create_data( p_name = entity_name
                                                                   p_op   = cl_abap_behvdescr=>op_permission
                                                                   p_kind = if_abap_behv=>typekind-result ).

    DATA(permission_reads) = VALUE abp_behv_permissions_tab( ( entity_name = entity_name
                                                               instances   = REF data( <permission_keys> )
                                                               request     = permission_request_ref
                                                               results     = permission_results_ref ) ).

    GET PERMISSIONS ONLY INSTANCE FEATURES OPERATIONS permission_reads
        FAILED FINAL(failed_permission)
        REPORTED FINAL(reported_permission).

    IF failed_permission IS NOT INITIAL AND permission_results_ref IS NOT BOUND.
      RETURN.
    ENDIF.

    ASSIGN permission_results_ref->* TO FIELD-SYMBOL(<permission_results>).

    IF lines( <permission_results>-(cl_abap_behv=>co_techfield_name-instances) ) = 0.
      RETURN.
    ENDIF.

    ASSIGN COMPONENT cl_abap_behv=>co_techfield_name-global OF STRUCTURE <permission_results> TO FIELD-SYMBOL(<global>).
    ASSIGN COMPONENT cl_abap_behv=>co_techfield_name-instances OF STRUCTURE <permission_results> TO <instance_permissions>.

    DATA(where) = |%tky = <%tky>|.

    " PROCESS PERMISSION REQUEST RESULTS
    LOOP AT <instance_permissions> ASSIGNING FIELD-SYMBOL(<instance_permission>).
      " Wipe state area

      APPEND INITIAL LINE TO reported_entity ASSIGNING FIELD-SYMBOL(<reported>).
      <reported>-(cl_abap_behv=>co_techfield_name-tky) = <instance_permission>-(cl_abap_behv=>co_techfield_name-tky).
      <reported>-(cl_abap_behv=>co_techfield_name-state_area) = zif_sapdev_rap_managed_base=>co_message_state_area-mandatory_field.

      " Find corresponding entity instance we read in mass previously
      ASSIGN COMPONENT cl_abap_behv=>co_techfield_name-tky OF STRUCTURE <instance_permission> TO FIELD-SYMBOL(<%tky>).

      LOOP AT <entities> ASSIGNING FIELD-SYMBOL(<entity>)
           WHERE (where).
        EXIT.
      ENDLOOP.

      " Check if mandatory field is maintained
      LOOP AT components INTO DATA(perm_request_field).
        IF NOT (     (    <instance_permission>-(cl_abap_behv=>co_techfield_name-field)-(perm_request_field-name) = if_abap_behv=>fc-f-mandatory
                       OR <permission_results>-(cl_abap_behv=>co_techfield_name-global)-(cl_abap_behv=>co_techfield_name-field)-(perm_request_field-name) = if_abap_behv=>fc-f-mandatory )
                 AND <entity>-(perm_request_field-name) IS INITIAL ).
          CONTINUE.
        ENDIF.

        APPEND INITIAL LINE TO failed_entity ASSIGNING FIELD-SYMBOL(<failed>).
        <failed>-(cl_abap_behv=>co_techfield_name-tky) = <instance_permission>-(cl_abap_behv=>co_techfield_name-tky).

        " Ensure You have a proper Data Element with proper Medium Label or @EndUserText.label annotation defined
        DATA(label) = cl_dd_ddl_annotation_service=>get_label_4_element_mde(
                          entityname  = entity_name
                          elementname = CONV #( perm_request_field-name ) ).

        " In case the underlying DB table is not containing data elements with proper texts,
        " or CDS entity and metadata extension is not containing the required labels annotations, we need to try
        " to identify the projection view if any, and get the field label texts from there
        IF label-value IS INITIAL.
          cl_abap_behv_aux=>get_current_context( IMPORTING from_projection = DATA(cds_projection_entity_name) ).
          IF cds_projection_entity_name IS NOT INITIAL.
            label = cl_dd_ddl_annotation_service=>get_label_4_element_mde(
                        entityname  = cds_projection_entity_name
                        elementname = CONV #( perm_request_field-name ) ).
          ENDIF.
        ENDIF.

        APPEND INITIAL LINE TO reported_entity ASSIGNING <reported>.
        <reported>-(cl_abap_behv=>co_techfield_name-tky) = <instance_permission>-(cl_abap_behv=>co_techfield_name-tky).
        <reported>-(cl_abap_behv=>co_techfield_name-state_area) = zif_sapdev_rap_managed_base=>co_message_state_area-mandatory_field.
        <reported>-(cl_abap_behv=>co_techfield_name-element)-(perm_request_field-name) = if_abap_behv=>mk-on.

        ASSIGN COMPONENT cl_abap_behv=>co_techfield_name-path OF STRUCTURE <reported> TO FIELD-SYMBOL(<%path>).
        IF sy-subrc = 0.
          " Child entity.
          fill_message_path( EXPORTING i_entity_name = entity_name
                                       i_instance    = <entity>
                             CHANGING  c_path        = <reported>-(cl_abap_behv=>co_techfield_name-path) ).
        ENDIF.

        " In case the field label could not be determined, we say "Field is mandatory"
        IF label-value IS INITIAL.
          <reported>-(cl_abap_behv=>co_techfield_name-msg) = NEW zcm_sapdev_rap(
              textid = zcm_sapdev_rap=>mandatory_field_no_label ).
        ELSE.
          <reported>-(cl_abap_behv=>co_techfield_name-msg) = NEW zcm_sapdev_rap(
                                                                     textid     = zcm_sapdev_rap=>mandatory_field
                                                                     field_name = CONV #( label-value ) ).
        ENDIF.
      ENDLOOP.

    ENDLOOP.
  ENDMETHOD.

  METHOD zif_sapdev_rap_managed_base~fill_message_path.
    cl_abap_behvdescr=>get_path( EXPORTING p_entity = i_entity_name
                                 IMPORTING p_path   = DATA(path) ).

    DATA(is_first) = abap_true.
    LOOP AT path INTO DATA(ancestor) STEP -1.
      IF is_first = abap_true.
        DATA(instance_ref) = REF data( i_instance ).
        DATA(entity_name) = i_entity_name.
        is_first = abap_false.
      ENDIF.

      DATA(ancestor_instance_ref) = read_ancestor( i_entity_name   = entity_name
                                                   i_instance_ref  = instance_ref
                                                   i_ancestor_info = ancestor ).

      ASSIGN ancestor_instance_ref->* TO FIELD-SYMBOL(<ancestor_instance>).
      IF ancestor-alias IS NOT INITIAL.
        ASSIGN COMPONENT ancestor-alias OF STRUCTURE c_path TO FIELD-SYMBOL(<ancestor_keys>).
      ELSE.
        ASSIGN COMPONENT ancestor-entity OF STRUCTURE c_path TO <ancestor_keys>.
      ENDIF.

      MOVE-CORRESPONDING <ancestor_instance> TO <ancestor_keys>.

      UNASSIGN: <ancestor_keys>, <ancestor_instance>.

      CLEAR: instance_ref,
             entity_name.

      instance_ref = ancestor_instance_ref.
      entity_name = ancestor-entity.
    ENDLOOP.
  ENDMETHOD.

  METHOD read_ancestor.
    DATA:
      associations TYPE cl_abap_behv_load=>tt_assoc.

    FIELD-SYMBOLS:
      <keys>    TYPE STANDARD TABLE,
      <parents> TYPE STANDARD TABLE.

    " Get Parent Association Name
    DATA(relation) = cl_abap_behv_load=>get_load( EXPORTING entity       = i_entity_name
                                                  IMPORTING associations = associations ).

    DATA(parent_association_name) = associations[ source_entity = i_entity_name
                                                  target_entity = i_ancestor_info-entity ]-name.

    DATA(keys_ref) = cl_abap_behvdescr=>create_data( p_root     = bdef_name
                                                     p_name     = i_entity_name
                                                     p_op       = if_abap_behv=>op-r-read_ba
                                                     p_sub_name = parent_association_name
                                                     p_kind     = if_abap_behv=>typekind-import ).

    DATA(parents_ref) = cl_abap_behvdescr=>create_data( p_root     = bdef_name
                                                        p_name     = i_entity_name
                                                        p_op       = if_abap_behv=>op-r-read_ba
                                                        p_sub_name = parent_association_name
                                                        p_kind     = if_abap_behv=>typekind-result ).

    ASSIGN i_instance_ref->* TO FIELD-SYMBOL(<instance>).
    ASSIGN keys_ref->* TO <keys>.
    APPEND INITIAL LINE TO <keys> ASSIGNING FIELD-SYMBOL(<key>).
    MOVE-CORRESPONDING <instance> TO <key>.

    LOOP AT i_ancestor_info-keys INTO DATA(key_field_name).
      <key>-(cl_abap_behv=>co_techfield_name-control)-(key_field_name) = if_abap_behv=>mk-on.
    ENDLOOP.

    DATA(eml_reads) = VALUE abp_behv_retrievals_tab( ( op          = if_abap_behv=>op-r-read_ba
                                                       entity_name = i_entity_name
                                                       sub_name    = parent_association_name
                                                       instances   = REF data( <keys> )
                                                       full        = abap_true
                                                       results     = parents_ref ) ).

    READ ENTITIES OPERATIONS eml_reads FAILED FINAL(read_failed).
    ASSIGN parents_ref->* TO <parents>.

    ASSIGN <parents>[ 1 ] TO FIELD-SYMBOL(<parent>).

    RETURN REF data( <parent> ).
  ENDMETHOD.

ENDCLASS.
