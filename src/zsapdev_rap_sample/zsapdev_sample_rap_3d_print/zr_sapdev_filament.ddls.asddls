@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZSAPDEV_Filament'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_SAPDEV_Filament
  as select from ZSAPDEV_FILAMENT as Filament
{
  key filament_id as FilamentID,
  filament_name as FilamentName,
  material_type as MaterialType,
  manufacturer as Manufacturer,
  color as Color,
  @Semantics.quantity.unitOfMeasure: 'DiameterUnit'
  diameter as Diameter,
  @Consumption.valueHelpDefinition: [ {
    entity.name: 'I_UnitOfMeasureStdVH', 
    entity.element: 'UnitOfMeasure', 
    useForValidation: true
  } ]
  diameter_unit as DiameterUnit,
  @Semantics.quantity.unitOfMeasure: 'WeightUnit'
  weight as Weight,
  @Consumption.valueHelpDefinition: [ {
    entity.name: 'I_UnitOfMeasureStdVH', 
    entity.element: 'UnitOfMeasure', 
    useForValidation: true
  } ]
  weight_unit as WeightUnit,
  @Semantics.quantity.unitOfMeasure: 'TempUnit'
  print_temp_min as PrintTempMin,
  @Semantics.quantity.unitOfMeasure: 'TempUnit'
  print_temp_max as PrintTempMax,
  @Semantics.quantity.unitOfMeasure: 'TempUnit'
  bed_temp_min as BedTempMin,
  @Semantics.quantity.unitOfMeasure: 'TempUnit'
  bed_temp_max as BedTempMax,
  @Consumption.valueHelpDefinition: [ {
    entity.name: 'I_UnitOfMeasureStdVH', 
    entity.element: 'UnitOfMeasure', 
    useForValidation: true
  } ]
  temp_unit as TempUnit,
  production_date as ProductionDate,
  @Semantics.amount.currencyCode: 'Currency'
  price as Price,
  @Consumption.valueHelpDefinition: [ {
    entity.name: 'I_CurrencyStdVH', 
    entity.element: 'Currency', 
    useForValidation: true
  } ]
  currency as Currency,
  status as Status,
  @Semantics.user.createdBy: true
  local_created_by as LocalCreatedBy,
  @Semantics.systemDateTime.createdAt: true
  local_created_at as LocalCreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  local_last_changed_by as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt
}
