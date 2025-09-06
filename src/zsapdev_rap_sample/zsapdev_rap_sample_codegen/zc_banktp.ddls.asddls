@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: 'Bank - TP'
}
@Objectmodel: {
  Supportedcapabilities: [ #UI_PROVIDER_PROJECTION_SOURCE ], 
  Usagetype.Dataclass: #TRANSACTIONAL, 
  Usagetype.Servicequality: #C, 
  Usagetype.Sizecategory: #M
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_BANKTP
  provider contract TRANSACTIONAL_QUERY
  as projection on I_BANKTP
  association [1..1] to I_BANKTP as _BaseEntity on $projection.BANKCOUNTRY = _BaseEntity.BANKCOUNTRY and $projection.BANKINTERNALID = _BaseEntity.BANKINTERNALID
{
  @Endusertext: {
    Label: 'Bank Country/Region', 
    Quickinfo: 'Bank Country/Region Key'
  }
  key BankCountry,
  @Endusertext: {
    Label: 'Bank Key', 
    Quickinfo: 'Bank Keys'
  }
  key BankInternalID,
  @Endusertext: {
    Label: 'Bank Name', 
    Quickinfo: 'Bank Name'
  }
  LongBankName,
  @Endusertext: {
    Label: 'Bank Branch', 
    Quickinfo: 'Bank Branch'
  }
  LongBankBranch,
  @Endusertext: {
    Label: 'SWIFT/BIC', 
    Quickinfo: 'SWIFT/BIC for International Payments'
  }
  SWIFTCode,
  @Endusertext: {
    Label: 'Bank Group', 
    Quickinfo: 'Bank Group (Bank Network)'
  }
  BankNetworkGrouping,
  @Endusertext: {
    Label: 'Deletion Indicator', 
    Quickinfo: 'Deletion Indicator'
  }
  IsMarkedForDeletion,
  @Endusertext: {
    Label: 'Bank number', 
    Quickinfo: 'Bank number'
  }
  BankNumber,
  @Endusertext: {
    Label: 'Internal Bank Category', 
    Quickinfo: 'Internal Bank Category'
  }
  BankCategory,
  _BankAddress : redirected to composition child ZC_BANKADDRESSTP,
  _BaseEntity
}
