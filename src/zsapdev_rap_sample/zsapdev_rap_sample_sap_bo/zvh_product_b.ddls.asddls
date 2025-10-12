@ObjectModel.query.implementedBy: 'ABAP:ZCL_VH_PRODUCT_B'
@EndUserText.label: 'Value help for products'
define custom entity ZVH_PRODUCT_B
{
  key Product      : abap.char( 40 );
      ProductText  : abap.char( 40 );
      ProductGroup : abap.char( 40 );
      @Semantics.amount.currencyCode: 'Currency'
      Price        : abap.curr( 15, 2 );
      Currency     : abap.cuky;
      BaseUnit     : abap.unit( 3 );
}
