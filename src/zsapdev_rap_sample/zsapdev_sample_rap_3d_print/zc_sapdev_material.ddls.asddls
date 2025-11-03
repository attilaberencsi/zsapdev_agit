@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZSAPDEV_Material'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_SAPDEV_Material
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_SAPDEV_Material
  association [1..1] to ZR_SAPDEV_Material as _BaseEntity on $projection.MATERIALID = _BaseEntity.MATERIALID
{
  key MaterialID,
  MaterialName,
  MaterialType,
  Manufacturer,
  PartNumber,
  @Semantics: {
    Amount.Currencycode: 'Currency'
  }
  UnitPrice,
  @Consumption: {
    Valuehelpdefinition: [ {
      Entity.Element: 'Currency', 
      Entity.Name: 'I_CurrencyStdVH', 
      Useforvalidation: true
    } ]
  }
  Currency,
  @Semantics: {
    Quantity.Unitofmeasure: 'UnitOfMeasure'
  }
  StockQuantity,
  @Semantics: {
    Quantity.Unitofmeasure: 'UnitOfMeasure'
  }
  MinimumStock,
  @Consumption: {
    Valuehelpdefinition: [ {
      Entity.Element: 'UnitOfMeasure', 
      Entity.Name: 'I_UnitOfMeasureStdVH', 
      Useforvalidation: true
    } ]
  }
  UnitOfMeasure,
  Description,
  @Semantics: {
    User.Createdby: true
  }
  LocalCreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  LocalCreatedAt,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  LocalLastChangedBy,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  _BaseEntity
}
