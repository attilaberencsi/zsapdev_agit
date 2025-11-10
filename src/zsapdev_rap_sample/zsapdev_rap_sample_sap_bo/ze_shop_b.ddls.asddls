@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Extension include for Web Order'
@AbapCatalog.viewEnhancementCategory: [ #PROJECTION_LIST ]
@AbapCatalog.extensibility: {
  extensible: true,
  elementSuffix: 'ZAA',
  allowNewDatasources: false,
  allowNewCompositions: false,
  dataSources: [ 'Shop' ],
  quota: {
    maximumFields: 100 ,
    maximumBytes: 10000
  }
}
define view entity ZE_Shop_B
  as select from zsapdev_ashop as Shop
{
  key order_uuid as OrderUUID
}
