@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZSAPDEV_Filament'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_SAPDEV_Filament
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_SAPDEV_Filament
  association [1..1] to ZR_SAPDEV_Filament as _BaseEntity on $projection.FILAMENTID = _BaseEntity.FILAMENTID
{
  key FilamentID,
  FilamentName,
  MaterialType,
  Manufacturer,
  Color,
  @Semantics: {
    Quantity.Unitofmeasure: 'DiameterUnit'
  }
  Diameter,
  @Consumption: {
    Valuehelpdefinition: [ {
      Entity.Element: 'UnitOfMeasure', 
      Entity.Name: 'I_UnitOfMeasureStdVH', 
      Useforvalidation: true
    } ]
  }
  DiameterUnit,
  @Semantics: {
    Quantity.Unitofmeasure: 'WeightUnit'
  }
  Weight,
  @Consumption: {
    Valuehelpdefinition: [ {
      Entity.Element: 'UnitOfMeasure', 
      Entity.Name: 'I_UnitOfMeasureStdVH', 
      Useforvalidation: true
    } ]
  }
  WeightUnit,
  @Semantics: {
    Quantity.Unitofmeasure: 'TempUnit'
  }
  PrintTempMin,
  @Semantics: {
    Quantity.Unitofmeasure: 'TempUnit'
  }
  PrintTempMax,
  @Semantics: {
    Quantity.Unitofmeasure: 'TempUnit'
  }
  BedTempMin,
  @Semantics: {
    Quantity.Unitofmeasure: 'TempUnit'
  }
  BedTempMax,
  @Consumption: {
    Valuehelpdefinition: [ {
      Entity.Element: 'UnitOfMeasure', 
      Entity.Name: 'I_UnitOfMeasureStdVH', 
      Useforvalidation: true
    } ]
  }
  TempUnit,
  ProductionDate,
  @Semantics: {
    Amount.Currencycode: 'Currency'
  }
  Price,
  @Consumption: {
    Valuehelpdefinition: [ {
      Entity.Element: 'Currency', 
      Entity.Name: 'I_CurrencyStdVH', 
      Useforvalidation: true
    } ]
  }
  Currency,
  Status,
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
