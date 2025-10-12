CLASS lhc_shop DEFINITION INHERITING FROM cl_abap_behavior_handler.

  PRIVATE SECTION.
    CONSTANTS co_state_area_delivery_date TYPE string VALUE 'DELIVERYDATE'       ##NO_TEXT.

    METHODS zz_validateDeliverydate FOR VALIDATE ON SAVE
      IMPORTING keys FOR Shop~zz_validateDeliverydate.

    METHODS ZZ_setOverallStatus FOR DETERMINE ON MODIFY
      IMPORTING keys FOR Shop~ZZ_setOverallStatus.
    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR Shop RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR Shop RESULT result.

    METHODS ZZ_ProvideFeedback FOR MODIFY
      IMPORTING keys FOR ACTION Shop~ZZ_ProvideFeedback RESULT result.

ENDCLASS.

CLASS lhc_shop IMPLEMENTATION.
  METHOD zz_validateDeliverydate.

    READ ENTITIES OF ZI_ShopTP_B IN LOCAL MODE
         ENTITY Shop
         FIELDS ( DeliveryDate OverallStatus )
         WITH CORRESPONDING #( keys )
         RESULT DATA(onlineorders).

    LOOP AT onlineorders INTO DATA(onlineorder).
      APPEND VALUE #( %tky        = onlineorder-%tky
                      %state_area = co_state_area_delivery_date )
             TO reported-shop.
      " TODO: variable is assigned but never used (ABAP cleaner)
      DATA(deliverydate) = onlineorder-DeliveryDate - cl_abap_context_info=>get_system_date( ).
      IF onlineorder-DeliveryDate IS INITIAL.
        APPEND VALUE #( %tky = onlineorder-%tky ) TO failed-shop.
        APPEND VALUE #( %tky        = onlineorder-%tky
                        %state_area = co_state_area_delivery_date
                        %msg        = new_message_with_text( severity = if_abap_behv_message=>severity-error
                                                             text     = 'Delivery Date is mandatory' ) )
               TO reported-shop.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.

  METHOD ZZ_setOverallStatus.
    DATA update_bo      TYPE TABLE FOR UPDATE ZI_ShopTP_B\\Shop.
    DATA update_bo_line TYPE STRUCTURE FOR UPDATE ZI_ShopTP_B\\Shop.

    READ ENTITIES OF ZI_ShopTP_B IN LOCAL MODE
         ENTITY Shop
         ALL FIELDS " ( OrderItemPrice OrderID )
         WITH CORRESPONDING #( keys )
         RESULT DATA(OnlineOrders)
         " TODO: variable is assigned but never used (ABAP cleaner)
         FAILED DATA(onlineorders_failed)
         " TODO: variable is assigned but never used (ABAP cleaner)
         REPORTED DATA(onlineorders_reported).

    DATA(product_value_help) = NEW zcl_vh_product_b( ).
    DATA(products) = product_value_help->get_products( ).

    LOOP AT onlineorders INTO DATA(onlineorder).

      update_bo_line-%tky = onlineorder-%tky.

      SELECT SINGLE * FROM @products AS hugo
        WHERE Product = @onlineorder-OrderedItem
        INTO @DATA(product).

      update_bo_line-OrderItemPrice = product-Price.
      update_bo_line-CurrencyCode   = product-Currency.

      IF product-Price > 1000.
        update_bo_line-OverallStatus = 'Awaiting approval'.
      ELSE.
        update_bo_line-OverallStatus = 'Automatically approved'.
      ENDIF.

      APPEND update_bo_line TO update_bo.
    ENDLOOP.

    MODIFY ENTITIES OF ZI_ShopTP_B IN LOCAL MODE
           ENTITY Shop
           UPDATE FIELDS ( OverallStatus CurrencyCode OrderItemPrice )
           WITH update_bo
           REPORTED DATA(update_reported).

    reported = CORRESPONDING #( DEEP update_reported ).
  ENDMETHOD.


  METHOD get_instance_features.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD ZZ_ProvideFeedback.
    MODIFY ENTITIES OF ZI_ShopTP_B IN LOCAL MODE
           ENTITY Shop
           UPDATE FIELDS ( zzfeedbackzaa )
           WITH VALUE #( FOR key IN keys
                         ( %tky          = key-%tky
                           zzfeedbackzaa = key-%param-feedback  ) ).

    " Read the changed data for action result
    READ ENTITIES OF ZI_ShopTP_B IN LOCAL MODE
         ENTITY Shop
         ALL FIELDS WITH
         CORRESPONDING #( keys )
         RESULT DATA(orders).

    " return result entities
    result = VALUE #( FOR o IN orders
                      ( %tky   = o-%tky
                        %param = o ) ).
  ENDMETHOD.

ENDCLASS.
