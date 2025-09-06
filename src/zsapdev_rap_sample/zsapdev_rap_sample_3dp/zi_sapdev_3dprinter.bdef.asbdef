managed;
strict ( 2 );
with draft;

define behavior for ZI_SAPDEV_3DPrinter alias Printer
implementation in class zbp_i_sapdev_3dprinter unique
persistent table zsapdev_3dp
draft table zsapdev_3dp_d
lock master total etag LastChangedAt
authorization master ( global )
etag master LocalLastChangedAt
{
  create ( authorization : none );
  update;
  delete;

  field ( numbering : managed, readonly ) EntityKey;
  field ( readonly ) LocalCreatedBy, LocalCreatedAt, LocalLastChangedBy, LocalLastChangedAt, LastChangedAt, EntityKeyChar;
  field (mandatory) Name;

  association _Nozzles { create; with draft; }

  validation validate_mandatory_fields on save { create; update; }

  draft action Edit;
  draft action Activate optimized;
  draft action Discard;
  draft action Resume;

  draft determine action Prepare
  {
    validation validate_mandatory_fields;
    validation Nozzle~validate_mandatory_fields;
  }

  mapping for zsapdev_3dp
    {
      EntityKey          = entity_key;
      PrinterId          = printer_id;
      Name               = name;
      Manufacturer       = manufacturer;
      LocalCreatedBy     = local_created_by;
      LocalCreatedAt     = local_created_at;
      LocalLastChangedBy = local_last_changed_by;
      LocalLastChangedAt = local_last_changed_at;
      LastChangedAt      = last_changed_at;
    }

}

define behavior for ZI_SAPDEV_Nozzle alias Nozzle
implementation in class zbp_i_sapdev_nozzle unique
persistent table zsapdev_nozzle
draft table zsapdev_nozzle_d
lock dependent by _Printer
authorization dependent by _Printer
etag master LocalLastChangedAt
{
  update;
  delete;

  field ( numbering : managed, readonly ) EntityKey;
  field ( readonly ) ParentKey;
  field ( readonly ) LocalCreatedBy, LocalCreatedAt, LocalLastChangedBy, LocalLastChangedAt, LastChangedAt, EntityKeyChar;
  field (mandatory) NozzleSize;

  association _Printer { with draft; }

  validation validate_mandatory_fields on save { create; update; }

  mapping for zsapdev_nozzle
    {
      EntityKey          = entity_key;
      ParentKey          = parent_key;
      NozzleName         = nozzle_name;
      NozzleSize         = nozzle_size;
      NozzleUom          = nozzle_uom;
      Description        = description;
      Manufacturer       = manufacturer;
      LocalCreatedBy     = local_created_by;
      LocalCreatedAt     = local_created_at;
      LocalLastChangedBy = local_last_changed_by;
      LocalLastChangedAt = local_last_changed_at;
      LastChangedAt      = last_changed_at;
    }

}