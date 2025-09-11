CLASS lhc_Nozzle DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS validate_mandatory_fields FOR VALIDATE ON SAVE
      IMPORTING keys FOR Nozzle~validate_mandatory_fields.

ENDCLASS.

CLASS lhc_Nozzle IMPLEMENTATION.

  METHOD validate_mandatory_fields.
  ENDMETHOD.

ENDCLASS.
