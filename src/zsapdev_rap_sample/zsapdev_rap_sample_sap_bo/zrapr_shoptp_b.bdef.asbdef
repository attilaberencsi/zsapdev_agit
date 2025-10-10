managed;
strict ( 2 );
with draft;
extensible
{
  with additional save;
  with determinations on modify;
  with determinations on save;
  with validations on save;
}
define behavior for ZRAPR_ShopTP_B alias Shop
implementation in class ZRAPBP_R_ShopTP_B unique
persistent table ZSAPDEV_ASHOPB
extensible
draft table ZRAPSHOP00D_B
query ZRAPR_Shop_D_B
etag master LocalLastChangedAt
lock master total etag LastChangedAt
authorization master( global )
{
  field ( readonly )
   OrderUUID,
   OrderID,
   LastChangedAt,
   CreatedBy,
   CreatedAt,
   LocalLastChangedBy,
   LastChangedBy,
   LocalLastChangedAt;

  field ( numbering : managed )
   OrderUUID;


  create;
  update;
  delete;

  draft action Edit;
  draft action Activate;
  draft action Discard;
  draft action Resume;
  draft determine action Prepare extensible;

  mapping for ZSAPDEV_ASHOPB corresponding extensible
  {
    OrderUUID = ORDER_UUID;
    OrderID = ORDER_ID;
    OrderedItem = ORDERED_ITEM;
    CurrencyCode = CURRENCY_CODE;
    OrderItemPrice = ORDER_ITEM_PRICE;
    DeliveryDate = DELIVERY_DATE;
    OverallStatus = OVERALL_STATUS;
    Notes = NOTES;
    LastChangedAt = LAST_CHANGED_AT;
    CreatedBy = CREATED_BY;
    CreatedAt = CREATED_AT;
    LocalLastChangedBy = LOCAL_LAST_CHANGED_BY;
    LastChangedBy = LAST_CHANGED_BY;
    LocalLastChangedAt = LOCAL_LAST_CHANGED_AT;
  }

  determination CalculateOrderID on save { create; }

}