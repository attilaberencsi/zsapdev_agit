@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'CDS View forShop'
@ObjectModel.sapObjectNodeType.name: 'ZRAPShop_B'
@AbapCatalog.extensibility: {
  extensible: true, 
  elementSuffix: 'ZAA', 
  allowNewDatasources: false, 
  allowNewCompositions: true, 
  dataSources: [ '_Extension' ], 
  quota: {
    maximumFields: 100 , 
    maximumBytes: 10000 
  }
}
define root view entity ZRAPR_ShopTP_B
  as select from ZRAPI_Shop_B as Shop
  association [1] to ZRAPE_Shop_B as _Extension on $projection.OrderUUID = _Extension.OrderUUID
{
  key OrderUUID,
  OrderID,
  OrderedItem,
  CurrencyCode,
  @Semantics.amount.currencyCode: 'CurrencyCode'
  OrderItemPrice,
  DeliveryDate,
  OverallStatus,
  Notes,
  @Semantics.systemDateTime.lastChangedAt: true
  LastChangedAt,
  @Semantics.user.createdBy: true
  CreatedBy,
  @Semantics.systemDateTime.createdAt: true
  CreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  LocalLastChangedBy,
  @Semantics.user.lastChangedBy: true
  LastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  LocalLastChangedAt,
  _Extension
}
