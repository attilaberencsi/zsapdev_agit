CLASS lsc_zr_sapdev_filament DEFINITION INHERITING FROM cl_abap_behavior_saver.

  PROTECTED SECTION.
    CONSTANTS co_nro_filament      TYPE cl_numberrange_runtime=>nr_object   VALUE 'Z3DMAT'.
    CONSTANTS co_nriv_filament_int TYPE cl_numberrange_runtime=>nr_interval VALUE '1'.

    METHODS adjust_numbers REDEFINITION.

ENDCLASS.

CLASS lsc_zr_sapdev_filament IMPLEMENTATION.
  METHOD adjust_numbers.
    LOOP AT mapped-filament ASSIGNING FIELD-SYMBOL(<mapped>).

      zcl_sapdev_rap_managed_base=>get_number( EXPORTING i_object       = co_nro_filament
                                                         i_interval     = co_nriv_filament_int
                                               IMPORTING e_number       = DATA(number)
                                                         e_behv_message = DATA(behv_message) ).

      <mapped>-FilamentID = number.

      IF behv_message IS BOUND.
        APPEND CORRESPONDING #( <mapped> ) TO reported-filament ASSIGNING FIELD-SYMBOL(<filament_reported>).
        <filament_reported>-%msg = behv_message.
      ENDIF.

    ENDLOOP.
  ENDMETHOD.

ENDCLASS.

CLASS lhc_zr_sapdev_filament DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    CONSTANTS co_bdef_name TYPE abp_root_entity_name VALUE 'ZR_SAPDEV_FILAMENT'.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING
      REQUEST requested_authorizations FOR Filament
      RESULT result.

    METHODS validate_mandatory_fields FOR VALIDATE ON SAVE
      IMPORTING keys FOR Filament~validate_mandatory_fields.
ENDCLASS.

CLASS lhc_zr_sapdev_filament IMPLEMENTATION.
  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD validate_mandatory_fields.
    NEW zcl_sapdev_rap_managed_base( i_bdef_name = co_bdef_name )->validate_mandatory_fields(
                                                                  EXPORTING keys            = keys
                                                                  CHANGING  failed_entity   = failed-filament
                                                                            reported_entity = reported-filament ).
  ENDMETHOD.

ENDCLASS.
