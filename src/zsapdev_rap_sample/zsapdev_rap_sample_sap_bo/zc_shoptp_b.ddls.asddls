@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Web Order'
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
define root view entity ZC_ShopTP_B
  provider contract transactional_query
  as projection on ZR_ShopTP_B as Shop
{
  key OrderUUID,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.90
      OrderID,
      @Consumption.valueHelpDefinition: [ {
        entity: {
          name: 'ZVH_PRODUCT_B',
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
