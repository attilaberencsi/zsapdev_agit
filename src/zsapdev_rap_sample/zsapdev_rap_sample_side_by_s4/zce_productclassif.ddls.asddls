@EndUserText.label: 'Products from S/4 Public Cloud'
@ObjectModel.query.implementedBy: 'ABAP:ZCL_SAPDEV_PRODCLAS_READ'
define custom entity ZCE_ProductClassif

{
  key Product      : abap.char( 40 );
      ProductType  : abap.char( 4 );
      ProductGroup : abap.char( 9 );
}
