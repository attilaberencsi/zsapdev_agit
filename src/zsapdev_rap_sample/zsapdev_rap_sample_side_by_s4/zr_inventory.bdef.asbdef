managed implementation in class ZBP_R_INVENTORY unique;
strict ( 2 );
with draft;
extensible;
define behavior for ZR_INVENTORY alias Inventory
persistent table zinventory
extensible
draft table zinventory_d
etag master LocalLastChangedAt
lock master total etag LastChangedAt
authorization master ( global )
{
  field ( readonly )
  UUID,
  InventoryID, //semantic key
  LocalCreatedBy,
  LocalCreatedAt,
  LocalLastChangedBy,
  LocalLastChangedAt,
  LastChangedAt;

  field ( numbering : managed )
  UUID;

  create;
  update;
  delete;

  draft action Activate optimized;
  draft action Discard;
  draft action Edit;
  draft action Resume;
  draft determine action Prepare;

  determination CalculateInventoryID on save { create; }

  mapping for zinventory corresponding extensible
    {
      UUID               = uuid;
      InventoryID        = inventory_id;
      ProductID          = product_id;
      Quantity           = quantity;
      QuantityUnit       = quantity_unit;
      Price              = price;
      CurrencyCode       = currency_code;
      Description        = description;
      OverallStatus      = overall_status;
      LocalCreatedBy     = local_created_by;
      LocalCreatedAt     = local_created_at;
      LocalLastChangedBy = local_last_changed_by;
      LocalLastChangedAt = local_last_changed_at;
      LastChangedAt      = last_changed_at;
    }

}