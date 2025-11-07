@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZSAPDEV_Material'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_SAPDEV_Material
  as select from zsapdev_material
{
  key material_id           as MaterialID,
      material_name         as MaterialName,
      material_type         as MaterialType,
      manufacturer          as Manufacturer,
      @EndUserText.label: 'Part Number'
      part_number           as PartNumber,

      @Semantics.amount.currencyCode: 'Currency'
      unit_price            as UnitPrice,
      @Consumption.valueHelpDefinition: [ {
        entity.name: 'I_CurrencyStdVH',
        entity.element: 'Currency',
        useForValidation: true
      } ]
      currency              as Currency,

      @EndUserText.label: 'Stock Quantity'
      @Semantics.quantity.unitOfMeasure: 'UnitOfMeasure'
      stock_quantity        as StockQuantity,

      @EndUserText.label: 'Minimum Stock'
      @Semantics.quantity.unitOfMeasure: 'UnitOfMeasure'
      minimum_stock         as MinimumStock,

      @Consumption.valueHelpDefinition: [ {
        entity.name: 'I_UnitOfMeasureStdVH',
        entity.element: 'UnitOfMeasure',
        useForValidation: true
      } ]
      unit_of_measure       as UnitOfMeasure,

      description           as Description,
      @Semantics.user.createdBy: true
      local_created_by      as LocalCreatedBy,
      @Semantics.systemDateTime.createdAt: true
      local_created_at      as LocalCreatedAt,
      @Semantics.user.localInstanceLastChangedBy: true
      local_last_changed_by as LocalLastChangedBy,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt
}
