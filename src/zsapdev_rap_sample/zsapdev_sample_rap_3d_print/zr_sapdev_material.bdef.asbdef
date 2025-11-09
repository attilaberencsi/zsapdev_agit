managed implementation in class ZBP_R_SAPDEV_Material unique;
strict ( 2 );
with draft;
extensible;
define behavior for ZR_SAPDEV_Material alias Material
persistent table ZSAPDEV_MATERIAL
extensible
draft table ZSAPDEV_MTRIAL_D
etag master LocalLastChangedAt
lock master total etag LastChangedAt
authorization master( global )
late numbering
{
  field ( readonly ) MaterialID;

  field ( readonly )
   LocalCreatedBy,
   LocalCreatedAt,
   LocalLastChangedBy,
   LocalLastChangedAt,
   LastChangedAt;

  create;
  update;
  delete;

  draft action Activate optimized;
  draft action Discard;
  draft action Edit;
  draft action Resume;
  draft determine action Prepare;

  mapping for ZSAPDEV_MATERIAL corresponding extensible
  {
    MaterialID = material_id;
    MaterialName = material_name;
    MaterialType = material_type;
    Manufacturer = manufacturer;
    PartNumber = part_number;
    UnitPrice = unit_price;
    Currency = currency;
    StockQuantity = stock_quantity;
    MinimumStock = minimum_stock;
    UnitOfMeasure = unit_of_measure;
    Description = description;
    LocalCreatedBy = local_created_by;
    LocalCreatedAt = local_created_at;
    LocalLastChangedBy = local_last_changed_by;
    LocalLastChangedAt = local_last_changed_at;
    LastChangedAt = last_changed_at;
  }

}