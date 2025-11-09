CLASS lsc_zr_sapdev_material DEFINITION INHERITING FROM cl_abap_behavior_saver.

  PROTECTED SECTION.
    CONSTANTS co_nro_filament      TYPE cl_numberrange_runtime=>nr_object   VALUE 'Z3DMAT'.
    CONSTANTS co_nriv_filament_int TYPE cl_numberrange_runtime=>nr_interval VALUE '1'.

    METHODS adjust_numbers REDEFINITION.

ENDCLASS.

CLASS lsc_zr_sapdev_material IMPLEMENTATION.
  METHOD adjust_numbers.
    LOOP AT mapped-Material ASSIGNING FIELD-SYMBOL(<mapped>).

      zcl_sapdev_rap_managed_base=>get_number( EXPORTING i_object       = co_nro_filament
                                                         i_interval     = co_nriv_filament_int
                                               IMPORTING e_number       = DATA(number)
                                                         e_behv_message = DATA(behv_message) ).

      <mapped>-MaterialID = number.

      IF behv_message IS BOUND.
        APPEND CORRESPONDING #( <mapped> ) TO reported-material ASSIGNING FIELD-SYMBOL(<material_reported>).
        <material_reported>-%msg = behv_message.
      ENDIF.

    ENDLOOP.
  ENDMETHOD.

ENDCLASS.


CLASS lhc_zr_sapdev_material DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
              IMPORTING
                 REQUEST requested_authorizations FOR Material
              RESULT result.
ENDCLASS.


CLASS lhc_zr_sapdev_material IMPLEMENTATION.
  METHOD get_global_authorizations.
  ENDMETHOD.
ENDCLASS.
