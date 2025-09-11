managed;
strict ( 2 );
with draft;

define behavior for ZI_SAPDEV_3DPrinter_EN alias Printer
implementation in class zbp_i_sapdev_3dprinter_en unique
persistent table zsapdev_3dp_en
draft table zsapdev_3dp_end
lock master total etag LastChangedAt
authorization master ( global )
early numbering

{
  create;
  update;
  delete;

  field ( mandatory : create, readonly : update ) PrinterId;
  field ( readonly ) LocalCreatedBy, LocalCreatedAt, LocalLastChangedBy, LocalLastChangedAt, LastChangedAt;
  field ( mandatory ) Name;

  association _Nozzles { create; with draft;}

  validation validate_mandatory_fields on save { create; update; }

  draft determine action Prepare
  {
    validation validate_mandatory_fields;
    validation Nozzle~validate_mandatory_fields;
  }


  draft action Edit;
  draft action Activate optimized;
  draft action Discard;
  draft action Resume;


  mapping for zsapdev_3dp_en
    {
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

define behavior for ZI_SAPDEV_Nozzle_EN alias Nozzle
implementation in class zbp_i_sapdev_nozzle_en unique
persistent table zsapdev_nozz_en
draft table zsapdev_nozz_end
lock dependent by _Printer
authorization dependent by _Printer
etag master LocalLastChangedAt

early numbering

{
  update;
  delete;

  field ( readonly ) PrinterId, NozzleId;
  field ( readonly ) LocalCreatedBy, LocalCreatedAt, LocalLastChangedBy, LocalLastChangedAt, LastChangedAt;

  field ( mandatory ) NozzleSize;

  validation validate_mandatory_fields on save { create; update; }

  association _Printer;

  mapping for zsapdev_nozz_en
    {
      PrinterId          = printer_id;
      NozzleId           = nozzle_id;
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