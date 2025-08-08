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
  ENDMETHOD.

ENDCLASS.
