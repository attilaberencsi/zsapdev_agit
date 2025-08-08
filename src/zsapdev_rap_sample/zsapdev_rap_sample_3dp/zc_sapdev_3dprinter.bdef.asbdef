projection;
strict ( 2 );
use draft;

define behavior for ZC_SAPDEV_3DPrinter alias Printer
{
  use create;
  use update;
  use delete;

  use action Edit;
  use action Activate;
  use action Discard;
  use action Resume;
  use action Prepare;

  use association _Nozzles { create; with draft; }
}

define behavior for ZC_SAPDEV_Nozzle alias Nozzle
{
  use update;
  use delete;

  use association _Printer { with draft; }
}