@AccessControl.authorizationCheck: #MANDATORY

@EndUserText.label: '###GENERATED Core Data Service Entity'

@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true

@ObjectModel.sapObjectNodeType.name: 'ZInventory'

define root view entity ZC_INVENTORY
  provider contract transactional_query
  as projection on ZR_INVENTORY

  association [1..1] to ZR_INVENTORY as _BaseEntity on $projection.UUID = _BaseEntity.UUID

{
  key UUID,

      InventoryID,

      @Consumption.valueHelpDefinition: [ { entity: { name: 'ZCE_ProductClassif', element: 'Product' },
                                            useForValidation: false } ]
      ProductID,

      @Semantics.quantity.unitOfMeasure: 'QuantityUnit'
      Quantity,

      @Consumption.valueHelpDefinition: [ { entity: { element: 'UnitOfMeasure', name: 'I_UnitOfMeasureStdVH' },
                                            useForValidation: true } ]
      QuantityUnit,

      @Semantics.amount.currencyCode: 'CurrencyCode'
      Price,

      @Consumption.valueHelpDefinition: [ { entity: { element: 'Currency', name: 'I_CurrencyStdVH' },
                                            useForValidation: true } ]
      CurrencyCode,

      Description,
      OverallStatus,

      @Semantics.user.createdBy: true
      LocalCreatedBy,

      @Semantics.systemDateTime.createdAt: true
      LocalCreatedAt,

      @Semantics.user.localInstanceLastChangedBy: true
      LocalLastChangedBy,

      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,

      @Semantics.systemDateTime.lastChangedAt: true
      LastChangedAt,

      _BaseEntity
}
