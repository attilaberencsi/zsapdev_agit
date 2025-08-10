projection;
strict ( 2 );

define behavior for ZC_SAPDEV_3DPrinter_ND alias Prnter
{
  use create;
  use update;
  use delete;

  use association _Nozzles { create; }
}

define behavior for ZC_SAPDEV_Nozzle_ND alias Nozzle
{
  use update;
  use delete;

  use association _Printer;
}