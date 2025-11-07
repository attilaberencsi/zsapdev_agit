managed implementation in class ZBP_R_SAPDEV_FILAMENT unique;
strict ( 2 );
with draft;
extensible;
define behavior for ZR_SAPDEV_Filament alias Filament
persistent table zsapdev_filament
extensible
draft table zsapdev_flment_d
etag master LocalLastChangedAt
lock master total etag LastChangedAt
authorization master ( global )
late numbering

{
  field ( readonly )
  FilamentID;

  field ( readonly )
  LocalCreatedBy,
  LocalCreatedAt,
  LocalLastChangedBy,
  LocalLastChangedAt,
  LastChangedAt;

  create;
  update;
  delete;

  field ( mandatory ) BedTempMin, BedTempMax, PrintTempMin, PrintTempMax, Color, Diameter;

  validation validate_mandatory_fields on save { create; update; }

  draft action Activate optimized;
  draft action Discard;
  draft action Edit;
  draft action Resume;
  draft determine action Prepare
  {
    validation validate_mandatory_fields;
  }

  mapping for zsapdev_filament corresponding extensible
    {
      FilamentID         = filament_id;
      FilamentName       = filament_name;
      MaterialType       = material_type;
      Manufacturer       = manufacturer;
      Color              = color;
      Diameter           = diameter;
      DiameterUnit       = diameter_unit;
      Weight             = weight;
      WeightUnit         = weight_unit;
      PrintTempMin       = print_temp_min;
      PrintTempMax       = print_temp_max;
      BedTempMin         = bed_temp_min;
      BedTempMax         = bed_temp_max;
      TempUnit           = temp_unit;
      ProductionDate     = production_date;
      Price              = price;
      Currency           = currency;
      Status             = status;
      LocalCreatedBy     = local_created_by;
      LocalCreatedAt     = local_created_at;
      LocalLastChangedBy = local_last_changed_by;
      LocalLastChangedAt = local_last_changed_at;
      LastChangedAt      = last_changed_at;
    }

}