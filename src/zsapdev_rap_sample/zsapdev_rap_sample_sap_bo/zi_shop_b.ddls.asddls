@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Basic Interface View for Web Order'
define view entity ZI_Shop_B
  as select from zsapdev_ashop as Shop
{
  key order_uuid            as OrderUUID,
      order_id              as OrderID,
      ordered_item          as OrderedItem,
      currency_code         as CurrencyCode,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      order_item_price      as OrderItemPrice,
      delivery_date         as DeliveryDate,
      overall_status        as OverallStatus,
      notes                 as Notes,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt,
      @Semantics.user.createdBy: true
      created_by            as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at            as CreatedAt,
      @Semantics.user.localInstanceLastChangedBy: true
      local_last_changed_by as LocalLastChangedBy,
      @Semantics.user.lastChangedBy: true
      last_changed_by       as LastChangedBy,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt
}
