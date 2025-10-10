@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View forShop'
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
@ObjectModel.semanticKey: [ 'OrderID' ]
@Search.searchable: true
define root view entity ZRAPC_ShopTP_B
  provider contract TRANSACTIONAL_QUERY
  as projection on ZRAPR_ShopTP_B as Shop
{
  key OrderUUID,
  @Search.defaultSearchElement: true
  @Search.fuzzinessThreshold: 0.90 
  OrderID,
  @Consumption.valueHelpDefinition: [ {
    entity: {
      name: 'ZRAP630I_VH_Product_B', 
      element: 'Product'
    }
  } ]
  OrderedItem,
  @Consumption.valueHelpDefinition: [ {
    entity: {
      name: 'I_Currency', 
      element: 'Currency'
    }, 
    useForValidation: true
  } ]
  CurrencyCode,
  @Semantics.amount.currencyCode: 'CurrencyCode'
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
