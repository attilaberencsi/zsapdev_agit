CLASS lhc_Nozzle DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    CONSTANTS:
      co_bdef_name TYPE abp_root_entity_name VALUE 'ZI_SAPDEV_3DPrinter_ND'.

    METHODS validate_mandatory_fields FOR VALIDATE ON SAVE
      IMPORTING keys FOR Nozzle~validate_mandatory_fields.

ENDCLASS.

CLASS lhc_Nozzle IMPLEMENTATION.
  METHOD validate_mandatory_fields.
    NEW zcl_sapdev_rap_managed_base( i_bdef_name = co_bdef_name )->validate_mandatory_fields(
                                                                  EXPORTING keys            = keys
                                                                  CHANGING  failed_entity   = failed-nozzle
                                                                            reported_entity = reported-nozzle ).
  ENDMETHOD.

ENDCLASS.
