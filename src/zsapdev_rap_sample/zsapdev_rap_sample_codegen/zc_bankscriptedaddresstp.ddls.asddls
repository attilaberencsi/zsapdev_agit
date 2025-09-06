@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: 'Bank International Address Versions - TP'
}
@Objectmodel: {
  Usagetype.Dataclass: #TRANSACTIONAL, 
  Usagetype.Servicequality: #C, 
  Usagetype.Sizecategory: #L
}
@AccessControl.authorizationCheck: #MANDATORY
define view entity ZC_BANKSCRIPTEDADDRESSTP
  as projection on I_BANKSCRIPTEDADDRESSTP
  association [1..1] to I_BANKSCRIPTEDADDRESSTP as _BaseEntity on $projection.BANKCOUNTRY = _BaseEntity.BANKCOUNTRY and $projection.BANKINTERNALID = _BaseEntity.BANKINTERNALID and $projection.ADDRESSREPRESENTATIONCODE = _BaseEntity.ADDRESSREPRESENTATIONCODE
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
    Label: 'Address Version', 
    Quickinfo: 'Version ID for International Addresses'
  }
  key AddressRepresentationCode,
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
    Label: 'Street', 
    Quickinfo: 'Street'
  }
  StreetName,
  @Endusertext: {
    Label: 'House Number', 
    Quickinfo: 'House Number'
  }
  HouseNumber,
  @Endusertext: {
    Label: 'Supplement', 
    Quickinfo: 'House number supplement'
  }
  HouseNumberSupplementText,
  @Endusertext: {
    Label: 'City', 
    Quickinfo: 'City'
  }
  CityName,
  @Endusertext: {
    Label: 'Postal Code', 
    Quickinfo: 'City Postal Code'
  }
  PostalCode,
  @Endusertext: {
    Label: 'Country/Region Key', 
    Quickinfo: 'Country/Region Key'
  }
  Country,
  @Endusertext: {
    Label: 'Region', 
    Quickinfo: 'Region (State, Province, County)'
  }
  Region,
  @Endusertext: {
    Label: 'Language Key', 
    Quickinfo: 'Language Key'
  }
  CorrespondenceLanguage,
  @Endusertext: {
    Label: 'District', 
    Quickinfo: 'District'
  }
  DistrictName,
  @Endusertext: {
    Label: 'Different City', 
    Quickinfo: 'City (different from postal city)'
  }
  VillageName,
  @Endusertext: {
    Label: 'Company Postal Code', 
    Quickinfo: 'Company Postal Code (for Large Customers)'
  }
  CompanyPostalCode,
  @Endusertext: {
    Label: 'Undeliverable', 
    Quickinfo: 'Street Address Undeliverable Flag'
  }
  StreetAddrNonDeliverableReason,
  @Endusertext: {
    Label: 'Street 2', 
    Quickinfo: 'Street 2'
  }
  StreetPrefixName1,
  @Endusertext: {
    Label: 'Street 3', 
    Quickinfo: 'Street 3'
  }
  StreetPrefixName2,
  @Endusertext: {
    Label: 'Street 4', 
    Quickinfo: 'Street 4'
  }
  StreetSuffixName1,
  @Endusertext: {
    Label: 'Street 5', 
    Quickinfo: 'Street 5'
  }
  StreetSuffixName2,
  @Endusertext: {
    Label: 'Building Code', 
    Quickinfo: 'Building (Number or Code)'
  }
  Building,
  @Endusertext: {
    Label: 'Floor', 
    Quickinfo: 'Floor in building'
  }
  Floor,
  @Endusertext: {
    Label: 'Room Number', 
    Quickinfo: 'Room or Apartment Number'
  }
  RoomNumber,
  @Endusertext: {
    Label: 'Title Key', 
    Quickinfo: 'Title Key'
  }
  FormOfAddress,
  @Endusertext: {
    Label: 'Tax Jurisdiction', 
    Quickinfo: 'Tax Jurisdiction'
  }
  TaxJurisdiction,
  @Endusertext: {
    Label: 'Transportation Zone', 
    Quickinfo: 'Transportation zone to or from which the goods are delivered'
  }
  TransportZone,
  @Endusertext: {
    Label: 'PO Box', 
    Quickinfo: 'PO Box'
  }
  POBox,
  @Endusertext: {
    Label: 'Undeliverable', 
    Quickinfo: 'PO Box Address Undeliverable Flag'
  }
  POBoxAddrNonDeliverableReason,
  @Endusertext: {
    Label: 'PO Box w/o No.', 
    Quickinfo: 'Flag: PO Box Without Number'
  }
  POBoxIsWithoutNumber,
  @Endusertext: {
    Label: 'PO Box Postal Code', 
    Quickinfo: 'PO Box Postal Code'
  }
  POBoxPostalCode,
  @Endusertext: {
    Label: 'PO Box Lobby', 
    Quickinfo: 'PO Box Lobby'
  }
  POBoxLobbyName,
  @Endusertext: {
    Label: 'PO Box City', 
    Quickinfo: 'PO Box city'
  }
  POBoxDeviatingCityName,
  @Endusertext: {
    Label: 'PO Box Region', 
    Quickinfo: 'Region for PO Box (Country/Region, State, Province, ...)'
  }
  POBoxDeviatingRegion,
  @Endusertext: {
    Label: 'PO Box Ctry/Region', 
    Quickinfo: 'PO Box of Country/Region'
  }
  POBoxDeviatingCountry,
  @Endusertext: {
    Label: 'c/o', 
    Quickinfo: 'c/o name'
  }
  CareOfName,
  @Endusertext: {
    Label: 'Delvry Serv Type', 
    Quickinfo: 'Type of Delivery Service'
  }
  DeliveryServiceTypeCode,
  @Endusertext: {
    Label: 'Delivery Service No.', 
    Quickinfo: 'Number of Delivery Service'
  }
  DeliveryServiceNumber,
  @Endusertext: {
    Label: 'Time zone', 
    Quickinfo: 'Address time zone'
  }
  AddressTimeZone,
  @Endusertext: {
    Label: 'County', 
    Quickinfo: 'County'
  }
  SecondaryRegionName,
  @Endusertext: {
    Label: 'Township', 
    Quickinfo: 'Township'
  }
  TertiaryRegionName,
  @Endusertext: {
    Label: 'Search Term 1', 
    Quickinfo: 'Search Term 1'
  }
  AddressSearchTerm1,
  @Endusertext: {
    Label: 'Search Term 2', 
    Quickinfo: 'Search Term 2'
  }
  AddressSearchTerm2,
  _Bank : redirected to ZC_BANKTP,
  _BankAddress : redirected to parent ZC_BANKADDRESSTP,
  _BaseEntity
}
