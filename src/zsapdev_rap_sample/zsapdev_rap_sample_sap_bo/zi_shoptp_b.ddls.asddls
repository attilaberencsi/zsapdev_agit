@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Tx.Interface View for Web Order'
@AbapCatalog.extensibility: {
  extensible: true,
  elementSuffix: 'ZAA',
  allowNewDatasources: false,
  allowNewCompositions: true,
  dataSources: [ 'Shop' ],
  quota: {
    maximumFields: 100 ,
    maximumBytes: 10000
  }
}
define root view entity ZI_ShopTP_B
  provider contract transactional_interface
  as projection on ZR_ShopTP_B as Shop
{
  key OrderUUID,
      OrderID,
      OrderedItem,
      CurrencyCode,
      OrderItemPrice,
      DeliveryDate,
      OverallStatus,
      Notes,
      LastChangedAt,
      CreatedBy,
      CreatedAt,
      LocalLastChangedBy,
      LastChangedBy,
      LocalLastChangedAt
}
