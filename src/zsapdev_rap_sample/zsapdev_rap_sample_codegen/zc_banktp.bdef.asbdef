projection implementation in class ZBP_C_BANKTP unique;
strict ( 2 );
extensible;
use draft;
use side effects;
define behavior for ZC_BANKADDRESSTP alias BankAddress
extensible
{
  use update;

  use association _bank { with draft; }
  use association _bankscriptvariant { create; with draft; }

}

define behavior for ZC_BANKSCRIPTEDADDRESSTP alias BankScriptedAddress
extensible
{
  use update;
  use delete;

  use association _bank { with draft; }
  use association _bankaddress { with draft; }

}

define behavior for ZC_BANKTP alias Bank
extensible
{
  use create;
  use update;

  use action Edit;
  use action Activate;
  use action Discard;
  use action Prepare;
  use action Resume;

  use association _bankaddress { create; with draft; }

}