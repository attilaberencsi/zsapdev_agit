@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Basic Interface View forShop'
define view entity ZI_Shop_B
  as select from ZSAPDEV_ASHOP as Shop
{
  key ORDER_UUID as OrderUUID,
  ORDER_ID as OrderID,
  ORDERED_ITEM as OrderedItem,
  CURRENCY_CODE as CurrencyCode,
  @Semantics.amount.currencyCode: 'CurrencyCode'
  ORDER_ITEM_PRICE as OrderItemPrice,
  DELIVERY_DATE as DeliveryDate,
  OVERALL_STATUS as OverallStatus,
  NOTES as Notes,
  @Semantics.systemDateTime.lastChangedAt: true
  LAST_CHANGED_AT as LastChangedAt,
  @Semantics.user.createdBy: true
  CREATED_BY as CreatedBy,
  @Semantics.systemDateTime.createdAt: true
  CREATED_AT as CreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  LOCAL_LAST_CHANGED_BY as LocalLastChangedBy,
  @Semantics.user.lastChangedBy: true
  LAST_CHANGED_BY as LastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  LOCAL_LAST_CHANGED_AT as LocalLastChangedAt
}
