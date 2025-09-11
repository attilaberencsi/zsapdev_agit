CLASS zcl_sapdev_nro_check DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_sapdev_nro_check IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA my_number TYPE c LENGTH 20 VALUE '00000000000000000001'.
    DATA range_low TYPE c LENGTH 6  VALUE '000001'.

    TRY.

        cl_numberrange_runtime=>number_check( EXPORTING nr_range_nr   = '1'
                                                        number        = '0000001'
                                                        "numeric_check = abap_true
                                                        object        = 'Z3DPEN'
                                                        "length_check  = abap_true
                                              IMPORTING returncode    = DATA(rc) ).
      CATCH cx_nr_object_not_found INTO DATA(ex_nro_not_found). " TODO: variable is assigned but never used (ABAP cleaner)
        DATA(text) = ex_nro_not_found->get_text( ).
      CATCH cx_number_ranges INTO DATA(ex_nro). " TODO: variable is assigned but never used (ABAP cleaner)
        text = ex_nro->get_text( ).
        " Fill failed and reported

    ENDTRY.

    " " (Space) number is in interval
    " X" Nummer liegt außerhalb des Intervalls
    " L" check of number length: length of the checked number is bigger than the defined length

    out->write( data = rc ).

    " Standard class doing this comparison: '00000000000000000001' < '000001'.
    IF my_number < range_low.
      out->write( 'good as CHAR but not as NUMC' ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
