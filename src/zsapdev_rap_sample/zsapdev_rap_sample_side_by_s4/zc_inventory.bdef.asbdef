projection implementation in class ZBP_C_INVENTORY unique;
strict ( 2 );
extensible;
use draft;
use side effects;
define behavior for ZC_INVENTORY alias Inventory
extensible
use etag
{
  use create;
  use update;
  use delete;

  use action Edit;
  use action Activate;
  use action Discard;
  use action Resume;
  use action Prepare;

}