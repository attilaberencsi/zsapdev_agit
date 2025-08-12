CLASS lhc_Nozzle DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    CONSTANTS:
      co_bdef_name TYPE abp_root_entity_name VALUE 'ZI_SAPDEV_3DPrinter_ND'.

    METHODS validate_mandatory_fields FOR VALIDATE ON SAVE
      IMPORTING keys FOR Nozzle~validate_mandatory_fields.

    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR Nozzle RESULT result.

ENDCLASS.

CLASS lhc_Nozzle IMPLEMENTATION.
  METHOD validate_mandatory_fields.
    NEW zcl_sapdev_rap_managed_base( i_bdef_name = co_bdef_name )->validate_mandatory_fields(
                                                                  EXPORTING keys            = keys
                                                                  CHANGING  failed_entity   = failed-nozzle
                                                                            reported_entity = reported-nozzle ).
  ENDMETHOD.

  METHOD get_instance_features.
    result = VALUE #( FOR k IN keys
                      ( %tky                = k-%tky
                        %field-Manufacturer = SWITCH #( 1
                                                        WHEN 1
                                                        THEN if_abap_behv=>fc-f-mandatory
                                                        ELSE if_abap_behv=>fc-f-unrestricted ) ) ).
  ENDMETHOD.

ENDCLASS.
