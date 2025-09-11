@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '3D Printer Nozzle'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_SAPDEV_Nozzle_EN
  as select from zsapdev_nozz_en

  association         to parent ZI_SAPDEV_3DPrinter_EN as _Printer       on $projection.PrinterId = _Printer.PrinterId

  association of many to one I_User                    as _CreatedByUser on $projection.LocalCreatedBy = _CreatedByUser.UserID
  association of many to one I_User                    as _ChangedByUser on $projection.LocalLastChangedBy = _ChangedByUser.UserID

{
      @EndUserText.label: 'Printer ID'
  key printer_id            as PrinterId,
  key nozzle_id             as NozzleId,

      @EndUserText.label: 'Name'
      nozzle_name           as NozzleName,

      @EndUserText.label: 'Size'
      @Semantics.quantity.unitOfMeasure: 'NozzleUom'
      nozzle_size           as NozzleSize,

      nozzle_uom            as NozzleUom,
      @EndUserText.label: 'Manufacturer'
      manufacturer          as Manufacturer,

      @EndUserText.label: 'Description'
      description           as Description,

      local_created_by      as LocalCreatedBy,
      local_created_at      as LocalCreatedAt,
      local_last_changed_by as LocalLastChangedBy,
      local_last_changed_at as LocalLastChangedAt,
      last_changed_at       as LastChangedAt,

      _Printer,
      _CreatedByUser,
      _ChangedByUser
}
