CLASS lhc_Printer DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR Printer RESULT result.

    METHODS validate_mandatory_fields FOR VALIDATE ON SAVE
      IMPORTING keys FOR Printer~validate_mandatory_fields.

ENDCLASS.

CLASS lhc_Printer IMPLEMENTATION.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD validate_mandatory_fields.
    NEW zcl_sapdev_rap_managed_base( i_bdef_name = 'ZI_SAPDEV_3DPRINTER' )->validate_mandatory_fields(
      EXPORTING keys            = keys
      CHANGING  failed_entity   = failed-printer
                reported_entity = reported-printer ).
  ENDMETHOD.

ENDCLASS.
