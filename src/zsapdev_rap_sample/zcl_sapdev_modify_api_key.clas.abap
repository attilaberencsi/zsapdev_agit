"! <p class="shorttext synchronized" lang="en">Modify API Key</p>
CLASS zcl_sapdev_modify_api_key DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_SAPDEV_MODIFY_API_KEY IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    INSERT INTO zsapdev_apikey VALUES @( VALUE #( provider_name = 'Idera'
                                                  api_name      = 'exchangeratesapi'
                                                  api_key       = ''  ) ).
  ENDMETHOD.
ENDCLASS.
