CLASS LHC_ZR_INVENTORY DEFINITION INHERITING FROM CL_ABAP_BEHAVIOR_HANDLER.
  PRIVATE SECTION.
    METHODS:
      GET_GLOBAL_AUTHORIZATIONS FOR GLOBAL AUTHORIZATION
        IMPORTING
           REQUEST requested_authorizations FOR Inventory
        RESULT result,
      CalculateInventoryID FOR DETERMINE ON SAVE
            IMPORTING keys FOR Inventory~CalculateInventoryID.
ENDCLASS.

CLASS LHC_ZR_INVENTORY IMPLEMENTATION.
  METHOD GET_GLOBAL_AUTHORIZATIONS.
  ENDMETHOD.

  METHOD CalculateInventoryID.
    READ ENTITIES OF zr_inventory IN LOCAL MODE
         ENTITY Inventory
         FIELDS ( InventoryID )
         WITH CORRESPONDING #( keys )
         RESULT DATA(inventories).

    DELETE inventories WHERE InventoryID IS NOT INITIAL.

    IF inventories IS INITIAL.
      RETURN.
    ENDIF.

    " Get max Inventory ID
    SELECT SINGLE FROM zr_inventory FIELDS MAX( inventoryid ) INTO @DATA(max_inventory).

    " Update involved instances
    MODIFY ENTITIES OF zr_inventory IN LOCAL MODE
           ENTITY Inventory
           UPDATE FIELDS ( InventoryID )
           WITH VALUE #( FOR inventory IN inventories INDEX INTO i
                         ( %tky        = inventory-%tky
                           inventoryID = max_inventory + i ) )
           REPORTED DATA(update_reported).

    " fill reported
    reported = CORRESPONDING #( DEEP update_reported ).
  ENDMETHOD.

ENDCLASS.
