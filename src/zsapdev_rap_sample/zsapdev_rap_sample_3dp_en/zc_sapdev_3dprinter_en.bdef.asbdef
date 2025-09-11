projection;
strict ( 2 );
use draft;

define behavior for ZC_SAPDEV_3DPrinter_EN alias Printer
{
  use create;
  use update;
  use delete;

  use action Prepare;
  use action Edit;
  use action Activate;
  use action Discard;
  use action Resume;

  use association _Nozzles { create; with draft; }
}

define behavior for ZC_SAPDEV_Nozzle_EN alias Nozzle
{
  use update;
  use delete;

  use association _Printer { with draft; }
}