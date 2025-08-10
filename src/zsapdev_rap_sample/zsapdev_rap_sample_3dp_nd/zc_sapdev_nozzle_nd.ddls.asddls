@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '3D Printer Nozzle'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define view entity ZC_SAPDEV_Nozzle_ND
  as projection on ZI_SAPDEV_Nozzle_ND
{
  key EntityKey,

      EntityKeyChar,

      ParentKey,
      NozzleName,
      NozzleSize,

      @Consumption.valueHelpDefinition: [ { useForValidation: true,
                                            entity: { name: 'I_UnitOfMeasureStdVH', element: 'UnitOfMeasure' } } ]
      NozzleUom,

      Manufacturer,

      Description,

      @ObjectModel.text.element: [ 'LocalCreatedByName' ]
      LocalCreatedBy,

      @Semantics.text: true
      _CreatedByUser.UserDescription as LocalCreatedByName,

      LocalCreatedAt,

      @ObjectModel.text.element: [ 'LocalLastChangedByName' ]
      LocalLastChangedBy,

      @Semantics.text: true
      _ChangedByUser.UserDescription as LocalLastChangedByName,

      LocalLastChangedAt,
      LastChangedAt,

      _Printer : redirected to parent ZC_SAPDEV_3DPrinter_ND
}
