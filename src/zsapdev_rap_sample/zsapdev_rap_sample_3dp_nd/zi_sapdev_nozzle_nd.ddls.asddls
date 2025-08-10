@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '3D Printer Nozzle'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_SAPDEV_Nozzle_ND
  as select from zsapdev_nozzlend

  association         to parent ZI_SAPDEV_3DPrinter_ND as _Printer       on $projection.ParentKey = _Printer.EntityKey

  association of many to one I_User                    as _CreatedByUser on $projection.LocalCreatedBy = _CreatedByUser.UserID
  association of many to one I_User                    as _ChangedByUser on $projection.LocalLastChangedBy = _ChangedByUser.UserID

{
  key entity_key            as EntityKey,
      // UUID as Text
      @EndUserText.label: 'Key'
      bintohex(entity_key)  as EntityKeyChar,
      parent_key            as ParentKey,

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
