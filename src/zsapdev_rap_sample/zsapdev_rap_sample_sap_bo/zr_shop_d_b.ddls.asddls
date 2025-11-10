@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Draft query view for Web Order'
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
define view entity ZR_Shop_D_B
  as select from zshop00d_b as Shop
{
  key orderuuid                     as OrderUUID,
      orderid                       as OrderID,
      ordereditem                   as OrderedItem,
      currencycode                  as CurrencyCode,
      orderitemprice                as OrderItemPrice,
      deliverydate                  as DeliveryDate,
      overallstatus                 as OverallStatus,
      notes                         as Notes,
      lastchangedat                 as LastChangedAt,
      createdby                     as CreatedBy,
      createdat                     as CreatedAt,
      locallastchangedby            as LocalLastChangedBy,
      lastchangedby                 as LastChangedBy,
      locallastchangedat            as LocalLastChangedAt,
      draftentitycreationdatetime   as Draftentitycreationdatetime,
      draftentitylastchangedatetime as Draftentitylastchangedatetime,
      draftadministrativedatauuid   as Draftadministrativedatauuid,
      draftentityoperationcode      as Draftentityoperationcode,
      hasactiveentity               as Hasactiveentity,
      draftfieldchanges             as Draftfieldchanges
}
