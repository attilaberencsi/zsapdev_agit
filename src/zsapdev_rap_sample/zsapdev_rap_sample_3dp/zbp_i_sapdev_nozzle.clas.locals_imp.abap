CLASS lhc_nozzle DEFINITION INHERITING FROM cl_abap_behavior_handler.

  PRIVATE SECTION.

    METHODS validate_mandatory_fields FOR VALIDATE ON SAVE
      IMPORTING keys FOR Nozzle~validate_mandatory_fields.

ENDCLASS.

CLASS lhc_nozzle IMPLEMENTATION.

  METHOD validate_mandatory_fields.
    NEW zcl_sapdev_rap_managed_base( i_bdef_name = 'ZI_SAPDEV_3DPRINTER' )->validate_mandatory_fields(
      EXPORTING keys            = keys
      CHANGING  failed_entity   = failed-nozzle
                reported_entity = reported-nozzle ).
  ENDMETHOD.

ENDCLASS.
