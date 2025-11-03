CLASS lsc_zr_sapdev_filament DEFINITION INHERITING FROM cl_abap_behavior_saver.

  PROTECTED SECTION.

    METHODS adjust_numbers REDEFINITION.

  PRIVATE SECTION.
    CONSTANTS co_nro_filament      TYPE cl_numberrange_runtime=>nr_object   VALUE 'Z3DFILA'.
    CONSTANTS co_nriv_filament_int TYPE cl_numberrange_runtime=>nr_interval VALUE '1'.

ENDCLASS.

CLASS lsc_zr_sapdev_filament IMPLEMENTATION.
  METHOD adjust_numbers.
    LOOP AT mapped-filament ASSIGNING FIELD-SYMBOL(<mapped>).
      TRY.

          cl_numberrange_runtime=>number_get( EXPORTING nr_range_nr = co_nriv_filament_int
                                                        object      = co_nro_filament
                                              IMPORTING number      = DATA(number)
                                                        returncode  = DATA(rc) ).

          <mapped>-FilamentID = number.

          CASE rc.
            WHEN space.
            WHEN '1'.
            WHEN '2'.
            WHEN OTHERS.
          ENDCASE.

        CATCH cx_nr_object_not_found INTO DATA(ex_object_not_found).
        CATCH cx_number_ranges  INTO DATA(ex_nro).

      ENDTRY.

    ENDLOOP.
  ENDMETHOD.

ENDCLASS.

CLASS lhc_zr_sapdev_filament DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING
      REQUEST requested_authorizations FOR Filament
      RESULT result.
    METHODS calc_temperature FOR DETERMINE ON MODIFY
      IMPORTING keys FOR Filament~calc_temperature.

    METHODS calc_prod_date FOR DETERMINE ON SAVE
      IMPORTING keys FOR Filament~calc_prod_date.

    METHODS check_prod_date FOR VALIDATE ON SAVE
      IMPORTING keys FOR Filament~check_prod_date.
ENDCLASS.

CLASS lhc_zr_sapdev_filament IMPLEMENTATION.
  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD calc_temperature.
  ENDMETHOD.

  METHOD calc_prod_date.
  ENDMETHOD.

  METHOD check_prod_date.
  ENDMETHOD.

ENDCLASS.
