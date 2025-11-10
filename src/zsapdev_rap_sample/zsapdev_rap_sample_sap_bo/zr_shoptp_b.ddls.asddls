@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Web Order'
@ObjectModel.sapObjectNodeType.name: 'ZShop_B'
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
define root view entity ZR_ShopTP_B
  as select from ZI_Shop_B as Shop
  association [1] to ZE_Shop_B as _Extension on $projection.OrderUUID = _Extension.OrderUUID
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
