@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '3D Printer Early Numbering'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define root view entity ZC_SAPDEV_3DPrinter_EN
  provider contract transactional_query
  as projection on ZI_SAPDEV_3DPrinter_EN
{
  key PrinterId,
      Name,
      Manufacturer,

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

      _Nozzles : redirected to composition child ZC_SAPDEV_Nozzle_EN

}
