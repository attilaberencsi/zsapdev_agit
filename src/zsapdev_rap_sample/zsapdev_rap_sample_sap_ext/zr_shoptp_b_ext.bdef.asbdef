extension using interface zi_shoptp_b
implementation in class zbp_r_shoptp_b_ext unique;

extend behavior for Shop
{

  field ( readonly ) zzfeedbackzaa;

  action ( authorization : global, features : instance ) ZZ_ProvideFeedback parameter ZD_FeedbackAction result [1] $self;

  validation zz_validateDeliverydate on save { create; field DeliveryDate; }

  determination ZZ_setOverallStatus on modify { field OrderedItem; }

  side effects { field OrderedItem affects field OrderItemPrice, field CurrencyCode, field OverallStatus; }

  extend draft determine action Prepare
  {
    validation zz_validateDeliveryDate;
  }
}