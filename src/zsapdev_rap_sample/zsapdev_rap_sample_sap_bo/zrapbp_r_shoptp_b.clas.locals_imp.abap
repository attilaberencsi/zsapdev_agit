CLASS LHC_SHOP DEFINITION INHERITING FROM CL_ABAP_BEHAVIOR_HANDLER.
  PRIVATE SECTION.
    METHODS:
      GET_GLOBAL_AUTHORIZATIONS FOR GLOBAL AUTHORIZATION
        IMPORTING
           REQUEST requested_authorizations FOR Shop
        RESULT result,
      CALCULATEORDERID FOR DETERMINE ON SAVE
        IMPORTING
          KEYS FOR  Shop~CalculateOrderID .
ENDCLASS.

CLASS LHC_SHOP IMPLEMENTATION.
  METHOD GET_GLOBAL_AUTHORIZATIONS.
  ENDMETHOD.
  METHOD CALCULATEORDERID.
  READ ENTITIES OF ZRAPR_ShopTP_B IN LOCAL MODE
    ENTITY Shop
      ALL FIELDS WITH CORRESPONDING #( keys )
    RESULT DATA(entities).
  DELETE entities WHERE OrderID IS NOT INITIAL.
  Check entities is not initial.
  "Dummy logic to determine object_id
  SELECT MAX( ORDER_ID ) FROM ZSAPDEV_ASHOPB INTO @DATA(max_object_id).
  "Add support for draft if used in modify
  "SELECT SINGLE FROM FROM ZRAPSHOP00D_B FIELDS MAX( OrderID ) INTO @DATA(max_orderid_draft). "draft table
  "if max_orderid_draft > max_object_id
  " max_object_id = max_orderid_draft.
  "ENDIF.
  MODIFY ENTITIES OF ZRAPR_ShopTP_B IN LOCAL MODE
    ENTITY Shop
      UPDATE FIELDS ( OrderID )
        WITH VALUE #( FOR entity IN entities INDEX INTO i (
        %tky          = entity-%tky
        OrderID     = max_object_id + i
  ) ).
  ENDMETHOD.
ENDCLASS.
