"! <p class="shorttext synchronized" lang="en">RAP Managed Handler Base</p>
"! <p>This is a handler helper utility to execute common operations</p>
CLASS zcl_sapdev_rap_managed_base DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    "! <p class="shorttext synchronized">BO Name</p>
    DATA bdef_name TYPE abp_root_entity_name READ-ONLY.

    "! <p class="shorttext synchronized">Setup</p>
    "!
    "! @parameter i_bdef_name | <p class="shorttext synchronized">Behavior definition name</p>
    METHODS constructor
      IMPORTING i_bdef_name TYPE abp_root_entity_name.

    "! <p class="shorttext synchronized">Validate Mandatory fields</p>
    "! <p><strong>BDEF</strong><br/>
    "! <strong>validation</strong> validate_mandatory_fields <strong>on save { create; update; }</strong>
    "! </p>
    "!
    "! @parameter keys            | <p class="shorttext synchronized">type table for validation</p>
    "! @parameter failed_entity   | <p class="shorttext synchronized">failed-entity</p>
    "! @parameter reported_entity | <p class="shorttext synchronized">reported-entity</p>
    METHODS validate_mandatory_fields
      IMPORTING !keys           TYPE STANDARD TABLE
      CHANGING  failed_entity   TYPE STANDARD TABLE
                reported_entity TYPE STANDARD TABLE.

    "! <p class="shorttext synchronized">Fill Message Path (%path)</p>
    "!
    "! @parameter i_entity_name | <p class="shorttext synchronized">Entity Name</p>
    "! @parameter i_instance    | <p class="shorttext synchronized">Instance</p>
    "! @parameter c_path        | <p class="shorttext synchronized">%path</p>
    METHODS fill_path
      IMPORTING i_entity_name TYPE abp_entity_name
                i_instance    TYPE any
      CHANGING  c_path        TYPE any.

  PROTECTED SECTION.
    METHODS read_ancestor
      IMPORTING i_entity_name   TYPE abp_entity_name
                i_instance_ref  TYPE REF TO data
                i_ancestor_info TYPE char1
                "i_ancestor_info TYPE cl_abap_behvdescr=>t_pathnode
      RETURNING VALUE(r_result) TYPE REF TO data.


  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_sapdev_rap_managed_base IMPLEMENTATION.
  METHOD constructor.
    bdef_name = i_bdef_name.
  ENDMETHOD.

  METHOD validate_mandatory_fields.
*    CONSTANTS co_state_area TYPE string VALUE 'VALIDATE_MANDATORY_FIELDS'.
*
*    DATA entity_name  TYPE cl_abap_behvdescr=>t_typename.
*    DATA read_control TYPE REF TO data.
*
*    FIELD-SYMBOLS <keys>                 TYPE STANDARD TABLE.
*    FIELD-SYMBOLS <entities>             TYPE STANDARD TABLE.
*    FIELD-SYMBOLS <permission_keys>      TYPE STANDARD TABLE.
*    FIELD-SYMBOLS <instance_permissions> TYPE STANDARD TABLE.
*
*    " Extract Entity Name
*    DATA(rap_typename) = cl_abap_behvdescr=>get_abs_typename_from_data_ref( REF #( keys ) ).
*
*    DATA(left_part_cutted) = substring_after( val = rap_typename
*                                              sub = '\ENTITY=' ) ##NO_TEXT.
*
*    entity_name = substring_before( val = left_part_cutted
*                                    sub = '\' ) ##NO_TEXT.
*
*    IF entity_name IS INITIAL.
*      entity_name = left_part_cutted.
*    ENDIF.
*
*    " FETCH ENTITY INSTANCES TO BE CHECKED
*
*    " Create data with the required types for the READ operation
*
*    " Read keys
*    DATA(keys_ref) = cl_abap_behvdescr=>create_data( p_root = bdef_name
*                                                     p_name = entity_name
*                                                     p_op   = if_abap_behv=>op-r-read
*                                                     p_kind = if_abap_behv=>typekind-import ).
*
*    ASSIGN keys_ref->* TO <keys>.
*    MOVE-CORRESPONDING keys TO <keys>.
*
*    " Control structure - we need all fields for the validation
*    LOOP AT <keys> ASSIGNING FIELD-SYMBOL(<key>).
*      ASSIGN COMPONENT cl_abap_behv=>co_techfield_name-control OF STRUCTURE <key> TO FIELD-SYMBOL(<%control>).
*
*      IF sy-tabix = 1.
*        CREATE DATA read_control LIKE <%control>.
*        ASSIGN read_control->* TO FIELD-SYMBOL(<read_control>).
*        DATA(components) = CAST cl_abap_structdescr( cl_abap_structdescr=>describe_by_data(
*                                                         p_data = <%control> ) )->components.
*        LOOP AT components INTO DATA(field_name).
*          <read_control>-(field_name-name) = if_abap_behv=>mk-on.
*        ENDLOOP.
*      ENDIF.
*
*      MOVE-CORRESPONDING <read_control> TO <%control>.
*    ENDLOOP.
*
*    " Read result
*    DATA(entities_ref) = cl_abap_behvdescr=>create_data( p_root = bdef_name
*                                                         p_name = entity_name
*                                                         p_op   = if_abap_behv=>op-r-read
*                                                         p_kind = if_abap_behv=>typekind-result ).
*
*    " Read operations
*    DATA(eml_reads) = VALUE abp_behv_retrievals_tab( ( op          = if_abap_behv=>op-r-read
*                                                       entity_name = entity_name
*                                                       instances   = REF data( <keys> )
*                                                       full        = abap_true
*                                                       results     = entities_ref ) ).
*
*    " Read the entity instances
*    READ ENTITIES OPERATIONS eml_reads FAILED FINAL(read_failed).
*
*    IF read_failed IS NOT INITIAL AND entities_ref IS NOT BOUND.
*      RETURN.
*    ENDIF.
*
*    ASSIGN entities_ref->* TO <entities>.
*
*    IF lines( <entities> ) = 0.
*      RETURN.
*    ENDIF.
*
*    " RETRIEVE WHICH FIELDS ARE MANDATORY BASED ON BDEF AND GET_INSTANCE_FEATURES()
*    DATA(permission_keys_ref) = cl_abap_behvdescr=>create_data( p_name = entity_name
*                                                                p_op   = cl_abap_behvdescr=>op_permission
*                                                                p_kind = if_abap_behv=>typekind-import ).
*
*    ASSIGN permission_keys_ref->* TO <permission_keys>.
*    MOVE-CORRESPONDING keys TO <permission_keys>.
*
*    DATA(permission_request_ref) = cl_abap_behvdescr=>create_data( p_name = entity_name
*                                                                   p_op   = cl_abap_behvdescr=>op_permission
*                                                                   p_kind = if_abap_behv=>typekind-request ).
*
*    ASSIGN permission_request_ref->(cl_abap_behv=>co_techfield_name-field) TO FIELD-SYMBOL(<%field>).
*    LOOP AT components INTO field_name.
*      <%field>-(field_name-name) = if_abap_behv=>mk-on.
*    ENDLOOP.
*
*    DATA(permission_results_ref) = cl_abap_behvdescr=>create_data( p_name = entity_name
*                                                                   p_op   = cl_abap_behvdescr=>op_permission
*                                                                   p_kind = if_abap_behv=>typekind-result ).
*
*    DATA(permission_reads) = VALUE abp_behv_permissions_tab( ( entity_name = entity_name
*                                                               instances   = REF data( <permission_keys> )
*                                                               request     = permission_request_ref
*                                                               results     = permission_results_ref ) ).
*
*    GET PERMISSIONS ONLY INSTANCE FEATURES OPERATIONS permission_reads
*        FAILED FINAL(failed_permission)
*        REPORTED FINAL(reported_permission).
*
*    IF failed_permission IS NOT INITIAL AND permission_results_ref IS NOT BOUND.
*      RETURN.
*    ENDIF.
*
*    ASSIGN permission_results_ref->* TO FIELD-SYMBOL(<permission_results>).
*
*    IF lines( <permission_results>-(cl_abap_behv=>co_techfield_name-instances) ) = 0.
*      RETURN.
*    ENDIF.
*
*    ASSIGN COMPONENT cl_abap_behv=>co_techfield_name-global OF STRUCTURE <permission_results> TO FIELD-SYMBOL(<global>).
*    ASSIGN COMPONENT cl_abap_behv=>co_techfield_name-instances OF STRUCTURE <permission_results> TO <instance_permissions>.
*
*    DATA(where) = |%tky = <%tky>|.
*
*    " PROCESS PERMISSION REQUEST RESULTS
*    LOOP AT <instance_permissions> ASSIGNING FIELD-SYMBOL(<instance_permission>).
*      " Draft=>wipe state area
*
*      "TO-DO: do it in all case and check the results
*      IF <instance_permission>-(cl_abap_behv=>co_techfield_name-is_draft) = if_abap_behv=>mk-on.
*        APPEND INITIAL LINE TO reported_entity ASSIGNING FIELD-SYMBOL(<reported>).
*        <reported>-(cl_abap_behv=>co_techfield_name-tky) = <instance_permission>-(cl_abap_behv=>co_techfield_name-tky).
*        <reported>-(cl_abap_behv=>co_techfield_name-state_area) = co_state_area.
*      ENDIF.
*
*      " Find corresponding entity instance we read in mass previously
*      ASSIGN COMPONENT cl_abap_behv=>co_techfield_name-tky OF STRUCTURE <instance_permission> TO FIELD-SYMBOL(<%tky>).
*
*      LOOP AT <entities> ASSIGNING FIELD-SYMBOL(<entity>)
*           WHERE (where).
*        EXIT.
*      ENDLOOP.
*
*      " Check if mandatory field is maintained
*      LOOP AT components INTO DATA(perm_request_field).
*        IF NOT (     (    <instance_permission>-(cl_abap_behv=>co_techfield_name-field)-(perm_request_field-name) = if_abap_behv=>fc-f-mandatory
*                       OR <permission_results>-(cl_abap_behv=>co_techfield_name-global)-(cl_abap_behv=>co_techfield_name-field)-(perm_request_field-name) = if_abap_behv=>fc-f-mandatory )
*                 AND <entity>-(perm_request_field-name) IS INITIAL ).
*          CONTINUE.
*        ENDIF.
*
*        APPEND INITIAL LINE TO failed_entity ASSIGNING FIELD-SYMBOL(<failed>).
*        <failed>-(cl_abap_behv=>co_techfield_name-tky) = <instance_permission>-(cl_abap_behv=>co_techfield_name-tky).
*
*        "TO-DO: get label
*        " Ensure You have a proper Data Element with proper Medium Label or @EndUserText.label annotation defined
**        DATA(label) = cl_dd_ddl_annotation_service=>get_label_4_element_mde(
**                          entityname  = entity_name
**                          elementname = CONV #( perm_request_field-name ) ).
*
*        DATA(label) = 'Test'.
*
*        APPEND INITIAL LINE TO reported_entity ASSIGNING <reported>.
*        <reported>-(cl_abap_behv=>co_techfield_name-tky) = <instance_permission>-(cl_abap_behv=>co_techfield_name-tky).
*        <reported>-(cl_abap_behv=>co_techfield_name-state_area) = co_state_area.
*        <reported>-(cl_abap_behv=>co_techfield_name-element)-(perm_request_field-name) = if_abap_behv=>mk-on.
*
*        fill_path( EXPORTING i_entity_name = entity_name
*                             i_instance    = <entity>
*                   CHANGING  c_path        = <reported>-(cl_abap_behv=>co_techfield_name-path) ).
*
*        <reported>-(cl_abap_behv=>co_techfield_name-msg) = NEW zcm_sapdev_rap(
*                                                                   textid     = zcm_sapdev_rap=>mandatory_field
*                                                                   field_name = CONV #( label ) ).
*      ENDLOOP.
*
*    ENDLOOP.
  ENDMETHOD.

  METHOD fill_path.
*    cl_abap_behvdescr=>get_path( EXPORTING p_entity = i_entity_name
*                                 IMPORTING p_path   = DATA(path) ).
*
*    DATA(first) = abap_true.
*    LOOP AT path INTO DATA(ancestor) STEP -1.
*      IF first = abap_true.
*        DATA(instance_ref) = REF data( i_instance ).
*        DATA(entity_name) = i_entity_name.
*        first = abap_false.
*      ENDIF.
*
*      DATA(ancestor_instance_ref) = read_ancestor( i_entity_name   = entity_name
*                                                   i_instance_ref  = instance_ref
*                                                   i_ancestor_info = ancestor ).
*
*      ASSIGN ancestor_instance_ref->* TO FIELD-SYMBOL(<ancestor_instance>).
*      IF ancestor-alias IS NOT INITIAL.
*        ASSIGN COMPONENT ancestor-alias OF STRUCTURE c_path TO FIELD-SYMBOL(<ancestor_keys>).
*      ELSE.
*        ASSIGN COMPONENT ancestor-entity OF STRUCTURE c_path TO <ancestor_keys>.
*      ENDIF.
*
*      MOVE-CORRESPONDING <ancestor_instance> TO <ancestor_keys>.
*
*      UNASSIGN: <ancestor_keys>, <ancestor_instance>.
*
*      CLEAR: instance_ref,
*             entity_name.
*
*      instance_ref = ancestor_instance_ref.
*      entity_name = ancestor-entity.
*    ENDLOOP.
  ENDMETHOD.

  METHOD read_ancestor.
*    DATA:
*      associations TYPE cl_abap_behv_load=>tt_assoc.
*
*    FIELD-SYMBOLS:
*      <keys>    TYPE STANDARD TABLE,
*      <parents> TYPE STANDARD TABLE.
*
*    " Get Parent Association Name
*    DATA(relation) = cl_abap_behv_load=>get_load( EXPORTING entity       = i_entity_name
*                                                  IMPORTING associations = associations ).
*
*    DATA(parent_association_name) = associations[ source_entity = i_entity_name
*                                                  target_entity = i_ancestor_info-entity ]-name.
*
*    DATA(keys_ref) = cl_abap_behvdescr=>create_data( p_root     = bdef_name
*                                                     p_name     = i_entity_name
*                                                     p_op       = if_abap_behv=>op-r-read_ba
*                                                     p_sub_name = parent_association_name
*                                                     p_kind     = if_abap_behv=>typekind-import ).
*
*    DATA(parents_ref) = cl_abap_behvdescr=>create_data( p_root     = bdef_name
*                                                        p_name     = i_entity_name
*                                                        p_op       = if_abap_behv=>op-r-read_ba
*                                                        p_sub_name = parent_association_name
*                                                        p_kind     = if_abap_behv=>typekind-result ).
*
*    ASSIGN i_instance_ref->* TO FIELD-SYMBOL(<instance>).
*    ASSIGN keys_ref->* TO <keys>.
*    APPEND INITIAL LINE TO <keys> ASSIGNING FIELD-SYMBOL(<key>).
*    MOVE-CORRESPONDING <instance> TO <key>.
*
*    LOOP AT i_ancestor_info-keys INTO DATA(key_field_name).
*      <key>-(cl_abap_behv=>co_techfield_name-control)-(key_field_name) = if_abap_behv=>mk-on.
*    ENDLOOP.
*
*    DATA(eml_reads) = VALUE abp_behv_retrievals_tab( ( op          = if_abap_behv=>op-r-read_ba
*                                                       entity_name = i_entity_name
*                                                       sub_name    = parent_association_name
*                                                       instances   = REF data( <keys> )
*                                                       full        = abap_true
*                                                       results     = parents_ref ) ).
*
*    READ ENTITIES OPERATIONS eml_reads FAILED FINAL(read_failed).
*    ASSIGN parents_ref->* TO <parents>.
*
*    ASSIGN <parents>[ 1 ] TO FIELD-SYMBOL(<parent>).
*
*    RETURN REF data( <parent> ).
  ENDMETHOD.

ENDCLASS.
