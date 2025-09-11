@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '3D Printer - Early Numbering'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_SAPDEV_3DPrinter_EN
  as select from zsapdev_3dp_en

  composition of exact one to many ZI_SAPDEV_Nozzle_EN as _Nozzles

  association of many      to one I_User               as _CreatedByUser on $projection.LocalCreatedBy = _CreatedByUser.UserID
  association of many      to one I_User               as _ChangedByUser on $projection.LocalLastChangedBy = _ChangedByUser.UserID

{
      @EndUserText.label: 'ID'
  key printer_id            as PrinterId,

      @EndUserText.label: 'Name'
      name                  as Name,

      @EndUserText.label: 'Manufacturer'
      manufacturer          as Manufacturer,

      @Semantics.user.createdBy: true
      local_created_by      as LocalCreatedBy,

      @Semantics.systemDateTime.createdAt: true
      local_created_at      as LocalCreatedAt,

      @Semantics.user.lastChangedBy: true
      local_last_changed_by as LocalLastChangedBy,

      @Semantics.systemDateTime.lastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,

      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      last_changed_at       as LastChangedAt,

      _Nozzles,

      _CreatedByUser,
      _ChangedByUser
}
