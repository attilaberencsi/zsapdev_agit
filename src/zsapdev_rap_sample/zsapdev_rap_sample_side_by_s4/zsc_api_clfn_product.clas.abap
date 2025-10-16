"! <p class="shorttext synchronized">Consumption model for client proxy - generated</p>
"! This class has been generated based on the metadata with namespace
"! <em>API_CLFN_PRODUCT_SRV</em>
CLASS zsc_api_clfn_product DEFINITION
  PUBLIC
  INHERITING FROM /iwbep/cl_v4_abs_pm_model_prov
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES:
      "! <p class="shorttext synchronized">A_ClfnClassForKeyDateType</p>
      BEGIN OF tys_a_clfn_class_for_key_dat_2,
        "! <em>Key property</em> ClassInternalID
        class_internal_id          TYPE c LENGTH 10,
        "! ClassType
        class_type                 TYPE c LENGTH 3,
        "! ClassTypeName
        class_type_name            TYPE c LENGTH 40,
        "! Class
        class                      TYPE c LENGTH 18,
        "! ClassStatus
        class_status               TYPE c LENGTH 1,
        "! ClassStatusName
        class_status_name          TYPE c LENGTH 40,
        "! ClassGroup
        class_group                TYPE c LENGTH 10,
        "! ClassGroupName
        class_group_name           TYPE c LENGTH 40,
        "! ClassSearchAuthGrp
        class_search_auth_grp      TYPE c LENGTH 3,
        "! ClassClassfctnAuthGrp
        class_classfctn_auth_grp   TYPE c LENGTH 3,
        "! ClassMaintAuthGrp
        class_maint_auth_grp       TYPE c LENGTH 3,
        "! DocNumber
        doc_number                 TYPE c LENGTH 25,
        "! DocumentType
        document_type              TYPE c LENGTH 3,
        "! DocumentPart
        document_part              TYPE c LENGTH 3,
        "! DocumentVersion
        document_version           TYPE c LENGTH 2,
        "! SameClassfctnReaction
        same_classfctn_reaction    TYPE c LENGTH 1,
        "! ClassStandardOrgName
        class_standard_org_name    TYPE c LENGTH 10,
        "! ClassStandardNumber
        class_standard_number      TYPE c LENGTH 20,
        "! ClassStandardStartDate
        class_standard_start_date  TYPE datn,
        "! ClassStandardVersionStartDate
        class_standard_version_sta TYPE datn,
        "! ClassStandardVersion
        class_standard_version     TYPE c LENGTH 2,
        "! ClassStandardCharcTable
        class_standard_charc_table TYPE c LENGTH 20,
        "! CreationDate
        creation_date              TYPE datn,
        "! LastChangeDate
        last_change_date           TYPE datn,
        "! ClassIsLocal
        class_is_local             TYPE abap_bool,
        "! ValidityStartDate
        validity_start_date        TYPE datn,
        "! ValidityEndDate
        validity_end_date          TYPE datn,
        "! ClassLastChangedDateTime
        class_last_changed_date_ti TYPE timestampl,
        "! KeyDate
        key_date                   TYPE datn,
      END OF tys_a_clfn_class_for_key_dat_2,
      "! <p class="shorttext synchronized">List of A_ClfnClassForKeyDateType</p>
      tyt_a_clfn_class_for_key_dat_2 TYPE STANDARD TABLE OF tys_a_clfn_class_for_key_dat_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ClfnProductType</p>
      BEGIN OF tys_a_clfn_product_type,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! ProductType
        product_type               TYPE c LENGTH 4,
        "! CrossPlantStatus
        cross_plant_status         TYPE c LENGTH 2,
        "! CrossPlantStatusValidityDate
        cross_plant_status_validit TYPE datn,
        "! CreationDate
        creation_date              TYPE datn,
        "! CreatedByUser
        created_by_user            TYPE c LENGTH 12,
        "! LastChangeDate
        last_change_date           TYPE datn,
        "! LastChangedByUser
        last_changed_by_user       TYPE c LENGTH 12,
        "! IsMarkedForDeletion
        is_marked_for_deletion     TYPE abap_bool,
        "! ProductOldID
        product_old_id             TYPE c LENGTH 40,
        "! GrossWeight
        gross_weight               TYPE p LENGTH 7 DECIMALS 3,
        "! PurchaseOrderQuantityUnit
        purchase_order_quantity_un TYPE c LENGTH 3,
        "! SourceOfSupply
        source_of_supply           TYPE c LENGTH 1,
        "! WeightUnit
        weight_unit                TYPE c LENGTH 3,
        "! NetWeight
        net_weight                 TYPE p LENGTH 7 DECIMALS 3,
        "! CountryOfOrigin
        country_of_origin          TYPE c LENGTH 3,
        "! CompetitorID
        competitor_id              TYPE c LENGTH 10,
        "! ProductGroup
        product_group              TYPE c LENGTH 9,
        "! BaseUnit
        base_unit                  TYPE c LENGTH 3,
        "! ItemCategoryGroup
        item_category_group        TYPE c LENGTH 4,
        "! ProductHierarchy
        product_hierarchy          TYPE c LENGTH 18,
        "! Division
        division                   TYPE c LENGTH 2,
        "! VarblPurOrdUnitIsActive
        varbl_pur_ord_unit_is_acti TYPE c LENGTH 1,
        "! VolumeUnit
        volume_unit                TYPE c LENGTH 3,
        "! MaterialVolume
        material_volume            TYPE p LENGTH 7 DECIMALS 3,
        "! ANPCode
        anpcode                    TYPE c LENGTH 9,
        "! Brand
        brand                      TYPE c LENGTH 4,
        "! ProcurementRule
        procurement_rule           TYPE c LENGTH 1,
        "! ValidityStartDate
        validity_start_date        TYPE datn,
        "! LowLevelCode
        low_level_code             TYPE c LENGTH 3,
        "! ProdNoInGenProdInPrepackProd
        prod_no_in_gen_prod_in_pre TYPE c LENGTH 40,
        "! SerialIdentifierAssgmtProfile
        serial_identifier_assgmt_p TYPE c LENGTH 4,
        "! SizeOrDimensionText
        size_or_dimension_text     TYPE c LENGTH 32,
        "! IndustryStandardName
        industry_standard_name     TYPE c LENGTH 18,
        "! ProductStandardID
        product_standard_id        TYPE c LENGTH 18,
        "! InternationalArticleNumberCat
        international_article_numb TYPE c LENGTH 2,
        "! ProductIsConfigurable
        product_is_configurable    TYPE abap_bool,
        "! IsBatchManagementRequired
        is_batch_management_requir TYPE abap_bool,
        "! ExternalProductGroup
        external_product_group     TYPE c LENGTH 18,
        "! CrossPlantConfigurableProduct
        cross_plant_configurable_p TYPE c LENGTH 40,
        "! SerialNoExplicitnessLevel
        serial_no_explicitness_lev TYPE c LENGTH 1,
        "! ProductManufacturerNumber
        product_manufacturer_numbe TYPE c LENGTH 40,
        "! ManufacturerPartProfile
        manufacturer_part_profile  TYPE c LENGTH 4,
        "! ChangeNumber
        change_number              TYPE c LENGTH 12,
        "! MaterialRevisionLevel
        material_revision_level    TYPE c LENGTH 2,
        "! HandlingIndicator
        handling_indicator         TYPE c LENGTH 4,
        "! WarehouseProductGroup
        warehouse_product_group    TYPE c LENGTH 4,
        "! WarehouseStorageCondition
        warehouse_storage_conditio TYPE c LENGTH 2,
        "! StandardHandlingUnitType
        standard_handling_unit_typ TYPE c LENGTH 4,
        "! SerialNumberProfile
        serial_number_profile      TYPE c LENGTH 4,
        "! AdjustmentProfile
        adjustment_profile         TYPE c LENGTH 3,
        "! PreferredUnitOfMeasure
        preferred_unit_of_measure  TYPE c LENGTH 3,
        "! IsPilferable
        is_pilferable              TYPE abap_bool,
        "! IsRelevantForHzdsSubstances
        is_relevant_for_hzds_subst TYPE abap_bool,
        "! QuarantinePeriod
        quarantine_period          TYPE p LENGTH 2 DECIMALS 0,
        "! TimeUnitForQuarantinePeriod
        time_unit_for_quarantine_p TYPE c LENGTH 3,
        "! QualityInspectionGroup
        quality_inspection_group   TYPE c LENGTH 4,
        "! AuthorizationGroup
        authorization_group        TYPE c LENGTH 4,
        "! HandlingUnitType
        handling_unit_type         TYPE c LENGTH 4,
        "! HasVariableTareWeight
        has_variable_tare_weight   TYPE abap_bool,
        "! MaximumPackagingLength
        maximum_packaging_length   TYPE p LENGTH 8 DECIMALS 3,
        "! MaximumPackagingWidth
        maximum_packaging_width    TYPE p LENGTH 8 DECIMALS 3,
        "! MaximumPackagingHeight
        maximum_packaging_height   TYPE p LENGTH 8 DECIMALS 3,
        "! UnitForMaxPackagingDimensions
        unit_for_max_packaging_dim TYPE c LENGTH 3,
      END OF tys_a_clfn_product_type,
      "! <p class="shorttext synchronized">List of A_ClfnProductType</p>
      tyt_a_clfn_product_type TYPE STANDARD TABLE OF tys_a_clfn_product_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductCharcType</p>
      BEGIN OF tys_a_product_charc_type,
        "! <em>Key property</em> Product
        product           TYPE c LENGTH 90,
        "! <em>Key property</em> CharcInternalID
        charc_internal_id TYPE c LENGTH 10,
        "! <em>Key property</em> ClassType
        class_type        TYPE c LENGTH 3,
        "! KeyDate
        key_date          TYPE datn,
        "! ChangeNumber
        change_number     TYPE c LENGTH 12,
      END OF tys_a_product_charc_type,
      "! <p class="shorttext synchronized">List of A_ProductCharcType</p>
      tyt_a_product_charc_type TYPE STANDARD TABLE OF tys_a_product_charc_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductCharcValueType</p>
      BEGIN OF tys_a_product_charc_value_type,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 90,
        "! <em>Key property</em> ClassType
        class_type                 TYPE c LENGTH 3,
        "! <em>Key property</em> CharcInternalID
        charc_internal_id          TYPE c LENGTH 10,
        "! <em>Key property</em> CharcValuePositionNumber
        charc_value_position_numbe TYPE c LENGTH 3,
        "! KeyDate
        key_date                   TYPE datn,
        "! ChangeNumber
        change_number              TYPE c LENGTH 12,
        "! CharcValueDependency
        charc_value_dependency     TYPE c LENGTH 1,
        "! CharcValue
        charc_value                TYPE c LENGTH 70,
        "! CharcFromNumericValue
        charc_from_numeric_value   TYPE /iwbep/v4_float,
        "! CharcFromNumericValueUnit
        charc_from_numeric_value_u TYPE c LENGTH 3,
        "! CharcToNumericValue
        charc_to_numeric_value     TYPE /iwbep/v4_float,
        "! CharcToNumericValueUnit
        charc_to_numeric_value_uni TYPE c LENGTH 3,
        "! CharcFromDecimalValue
        charc_from_decimal_value   TYPE p LENGTH 16 DECIMALS 14,
        "! CharcToDecimalValue
        charc_to_decimal_value     TYPE p LENGTH 16 DECIMALS 14,
        "! CharcFromAmount
        charc_from_amount          TYPE p LENGTH 13 DECIMALS 3,
        "! CharcToAmount
        charc_to_amount            TYPE p LENGTH 13 DECIMALS 3,
        "! Currency
        currency                   TYPE c LENGTH 5,
        "! CharcFromDate
        charc_from_date            TYPE datn,
        "! CharcToDate
        charc_to_date              TYPE datn,
        "! CharcFromTime
        charc_from_time            TYPE timn,
        "! CharcToTime
        charc_to_time              TYPE timn,
        "! CharacteristicAuthor
        characteristic_author      TYPE c LENGTH 1,
        "! CharcMaintAuthGrp
        charc_maint_auth_grp       TYPE c LENGTH 3,
      END OF tys_a_product_charc_value_type,
      "! <p class="shorttext synchronized">List of A_ProductCharcValueType</p>
      tyt_a_product_charc_value_type TYPE STANDARD TABLE OF tys_a_product_charc_value_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductClassCharcType</p>
      BEGIN OF tys_a_product_class_charc_type,
        "! <em>Key property</em> Product
        product           TYPE c LENGTH 90,
        "! <em>Key property</em> ClassInternalID
        class_internal_id TYPE c LENGTH 10,
        "! <em>Key property</em> CharcInternalID
        charc_internal_id TYPE c LENGTH 10,
        "! KeyDate
        key_date          TYPE datn,
        "! ChangeNumber
        change_number     TYPE c LENGTH 12,
        "! ClassType
        class_type        TYPE c LENGTH 3,
      END OF tys_a_product_class_charc_type,
      "! <p class="shorttext synchronized">List of A_ProductClassCharcType</p>
      tyt_a_product_class_charc_type TYPE STANDARD TABLE OF tys_a_product_class_charc_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductClassType</p>
      BEGIN OF tys_a_product_class_type,
        "! <em>Key property</em> Product
        product           TYPE c LENGTH 90,
        "! <em>Key property</em> ClassInternalID
        class_internal_id TYPE c LENGTH 10,
        "! KeyDate
        key_date          TYPE datn,
        "! ChangeNumber
        change_number     TYPE c LENGTH 12,
        "! ClassType
        class_type        TYPE c LENGTH 3,
      END OF tys_a_product_class_type,
      "! <p class="shorttext synchronized">List of A_ProductClassType</p>
      tyt_a_product_class_type TYPE STANDARD TABLE OF tys_a_product_class_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductDescriptionType</p>
      BEGIN OF tys_a_product_description_type,
        "! <em>Key property</em> Product
        product             TYPE c LENGTH 40,
        "! <em>Key property</em> Language
        language            TYPE c LENGTH 2,
        "! ProductDescription
        product_description TYPE c LENGTH 40,
      END OF tys_a_product_description_type,
      "! <p class="shorttext synchronized">List of A_ProductDescriptionType</p>
      tyt_a_product_description_type TYPE STANDARD TABLE OF tys_a_product_description_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductPlantProcurementType</p>
      BEGIN OF tys_a_product_plant_procurem_2,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> Plant
        plant                      TYPE c LENGTH 4,
        "! IsAutoPurOrdCreationAllowed
        is_auto_pur_ord_creation_a TYPE abap_bool,
        "! IsSourceListRequired
        is_source_list_required    TYPE abap_bool,
        "! SourceOfSupplyCategory
        source_of_supply_category  TYPE c LENGTH 1,
      END OF tys_a_product_plant_procurem_2,
      "! <p class="shorttext synchronized">List of A_ProductPlantProcurementType</p>
      tyt_a_product_plant_procurem_2 TYPE STANDARD TABLE OF tys_a_product_plant_procurem_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductPlantType</p>
      BEGIN OF tys_a_product_plant_type,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> Plant
        plant                      TYPE c LENGTH 4,
        "! PurchasingGroup
        purchasing_group           TYPE c LENGTH 3,
        "! CountryOfOrigin
        country_of_origin          TYPE c LENGTH 3,
        "! RegionOfOrigin
        region_of_origin           TYPE c LENGTH 3,
        "! ProductionInvtryManagedLoc
        production_invtry_managed  TYPE c LENGTH 4,
        "! ProfileCode
        profile_code               TYPE c LENGTH 2,
        "! ProfileValidityStartDate
        profile_validity_start_dat TYPE datn,
        "! AvailabilityCheckType
        availability_check_type    TYPE c LENGTH 2,
        "! FiscalYearVariant
        fiscal_year_variant        TYPE c LENGTH 2,
        "! PeriodType
        period_type                TYPE c LENGTH 1,
        "! ProfitCenter
        profit_center              TYPE c LENGTH 10,
        "! Commodity
        commodity                  TYPE c LENGTH 17,
        "! GoodsReceiptDuration
        goods_receipt_duration     TYPE p LENGTH 2 DECIMALS 0,
        "! MaintenanceStatusName
        maintenance_status_name    TYPE c LENGTH 15,
        "! IsMarkedForDeletion
        is_marked_for_deletion     TYPE abap_bool,
        "! MRPType
        mrptype                    TYPE c LENGTH 2,
        "! MRPResponsible
        mrpresponsible             TYPE c LENGTH 3,
        "! ABCIndicator
        abcindicator               TYPE c LENGTH 1,
        "! MinimumLotSizeQuantity
        minimum_lot_size_quantity  TYPE p LENGTH 7 DECIMALS 3,
        "! MaximumLotSizeQuantity
        maximum_lot_size_quantity  TYPE p LENGTH 7 DECIMALS 3,
        "! FixedLotSizeQuantity
        fixed_lot_size_quantity    TYPE p LENGTH 7 DECIMALS 3,
        "! ConsumptionTaxCtrlCode
        consumption_tax_ctrl_code  TYPE c LENGTH 16,
        "! IsCoProduct
        is_co_product              TYPE abap_bool,
        "! ProductIsConfigurable
        product_is_configurable    TYPE c LENGTH 40,
        "! StockDeterminationGroup
        stock_determination_group  TYPE c LENGTH 4,
        "! StockInTransferQuantity
        stock_in_transfer_quantity TYPE p LENGTH 7 DECIMALS 3,
        "! StockInTransitQuantity
        stock_in_transit_quantity  TYPE p LENGTH 7 DECIMALS 3,
        "! HasPostToInspectionStock
        has_post_to_inspection_sto TYPE abap_bool,
        "! IsBatchManagementRequired
        is_batch_management_requir TYPE abap_bool,
        "! SerialNumberProfile
        serial_number_profile      TYPE c LENGTH 4,
        "! IsNegativeStockAllowed
        is_negative_stock_allowed  TYPE abap_bool,
        "! GoodsReceiptBlockedStockQty
        goods_receipt_blocked_stoc TYPE p LENGTH 7 DECIMALS 3,
        "! HasConsignmentCtrl
        has_consignment_ctrl       TYPE c LENGTH 1,
        "! FiscalYearCurrentPeriod
        fiscal_year_current_period TYPE c LENGTH 4,
        "! FiscalMonthCurrentPeriod
        fiscal_month_current_perio TYPE c LENGTH 2,
        "! ProcurementType
        procurement_type           TYPE c LENGTH 1,
        "! IsInternalBatchManaged
        is_internal_batch_managed  TYPE abap_bool,
        "! ProductCFOPCategory
        product_cfopcategory       TYPE c LENGTH 2,
        "! ProductIsExciseTaxRelevant
        product_is_excise_tax_rele TYPE abap_bool,
        "! BaseUnit
        base_unit                  TYPE c LENGTH 3,
      END OF tys_a_product_plant_type,
      "! <p class="shorttext synchronized">List of A_ProductPlantType</p>
      tyt_a_product_plant_type TYPE STANDARD TABLE OF tys_a_product_plant_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductSalesDeliveryType</p>
      BEGIN OF tys_a_product_sales_delivery_t,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> ProductSalesOrg
        product_sales_org          TYPE c LENGTH 4,
        "! <em>Key property</em> ProductDistributionChnl
        product_distribution_chnl  TYPE c LENGTH 2,
        "! MinimumOrderQuantity
        minimum_order_quantity     TYPE p LENGTH 7 DECIMALS 3,
        "! SupplyingPlant
        supplying_plant            TYPE c LENGTH 4,
        "! PriceSpecificationProductGroup
        price_specification_produc TYPE c LENGTH 2,
        "! AccountDetnProductGroup
        account_detn_product_group TYPE c LENGTH 2,
        "! DeliveryNoteProcMinDelivQty
        delivery_note_proc_min_del TYPE p LENGTH 7 DECIMALS 3,
        "! ItemCategoryGroup
        item_category_group        TYPE c LENGTH 4,
        "! DeliveryQuantityUnit
        delivery_quantity_unit     TYPE c LENGTH 3,
        "! DeliveryQuantity
        delivery_quantity          TYPE p LENGTH 7 DECIMALS 3,
        "! ProductSalesStatus
        product_sales_status       TYPE c LENGTH 2,
        "! ProductSalesStatusValidityDate
        product_sales_status_valid TYPE datn,
        "! SalesMeasureUnit
        sales_measure_unit         TYPE c LENGTH 3,
        "! IsMarkedForDeletion
        is_marked_for_deletion     TYPE abap_bool,
        "! ProductHierarchy
        product_hierarchy          TYPE c LENGTH 18,
        "! FirstSalesSpecProductGroup
        first_sales_spec_product_g TYPE c LENGTH 3,
        "! SecondSalesSpecProductGroup
        second_sales_spec_product  TYPE c LENGTH 3,
        "! ThirdSalesSpecProductGroup
        third_sales_spec_product_g TYPE c LENGTH 3,
        "! FourthSalesSpecProductGroup
        fourth_sales_spec_product  TYPE c LENGTH 3,
        "! FifthSalesSpecProductGroup
        fifth_sales_spec_product_g TYPE c LENGTH 3,
        "! MinimumMakeToOrderOrderQty
        minimum_make_to_order_orde TYPE p LENGTH 7 DECIMALS 3,
        "! BaseUnit
        base_unit                  TYPE c LENGTH 3,
      END OF tys_a_product_sales_delivery_t,
      "! <p class="shorttext synchronized">List of A_ProductSalesDeliveryType</p>
      tyt_a_product_sales_delivery_t TYPE STANDARD TABLE OF tys_a_product_sales_delivery_t WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductSalesTaxType</p>
      BEGIN OF tys_a_product_sales_tax_type,
        "! <em>Key property</em> Product
        product            TYPE c LENGTH 40,
        "! <em>Key property</em> Country
        country            TYPE c LENGTH 3,
        "! <em>Key property</em> TaxCategory
        tax_category       TYPE c LENGTH 4,
        "! <em>Key property</em> TaxClassification
        tax_classification TYPE c LENGTH 1,
      END OF tys_a_product_sales_tax_type,
      "! <p class="shorttext synchronized">List of A_ProductSalesTaxType</p>
      tyt_a_product_sales_tax_type TYPE STANDARD TABLE OF tys_a_product_sales_tax_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductStorageLocationType</p>
      BEGIN OF tys_a_product_storage_locati_2,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> Plant
        plant                      TYPE c LENGTH 4,
        "! <em>Key property</em> StorageLocation
        storage_location           TYPE c LENGTH 4,
        "! WarehouseStorageBin
        warehouse_storage_bin      TYPE c LENGTH 10,
        "! MaintenanceStatus
        maintenance_status         TYPE c LENGTH 15,
        "! PhysicalInventoryBlockInd
        physical_inventory_block_i TYPE c LENGTH 1,
        "! CreationDate
        creation_date              TYPE datn,
        "! IsMarkedForDeletion
        is_marked_for_deletion     TYPE abap_bool,
        "! DateOfLastPostedCntUnRstrcdStk
        date_of_last_posted_cnt_un TYPE datn,
        "! InventoryCorrectionFactor
        inventory_correction_facto TYPE /iwbep/v4_float,
        "! InvtryRestrictedUseStockInd
        invtry_restricted_use_stoc TYPE c LENGTH 3,
        "! InvtryCurrentYearStockInd
        invtry_current_year_stock  TYPE c LENGTH 3,
        "! InvtryQualInspCurrentYrStkInd
        invtry_qual_insp_current_y TYPE c LENGTH 3,
        "! InventoryBlockStockInd
        inventory_block_stock_ind  TYPE c LENGTH 3,
        "! InvtryRestStockPrevPeriodInd
        invtry_rest_stock_prev_per TYPE c LENGTH 3,
        "! InventoryStockPrevPeriod
        inventory_stock_prev_perio TYPE c LENGTH 3,
        "! InvtryStockQltyInspPrevPeriod
        invtry_stock_qlty_insp_pre TYPE c LENGTH 3,
        "! HasInvtryBlockStockPrevPeriod
        has_invtry_block_stock_pre TYPE c LENGTH 3,
        "! FiscalYearCurrentPeriod
        fiscal_year_current_period TYPE c LENGTH 4,
        "! FiscalMonthCurrentPeriod
        fiscal_month_current_perio TYPE c LENGTH 2,
        "! FiscalYearCurrentInvtryPeriod
        fiscal_year_current_invtry TYPE c LENGTH 4,
      END OF tys_a_product_storage_locati_2,
      "! <p class="shorttext synchronized">List of A_ProductStorageLocationType</p>
      tyt_a_product_storage_locati_2 TYPE STANDARD TABLE OF tys_a_product_storage_locati_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductSupplyPlanningType</p>
      BEGIN OF tys_a_product_supply_plannin_2,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> Plant
        plant                      TYPE c LENGTH 4,
        "! FixedLotSizeQuantity
        fixed_lot_size_quantity    TYPE p LENGTH 7 DECIMALS 3,
        "! MaximumLotSizeQuantity
        maximum_lot_size_quantity  TYPE p LENGTH 7 DECIMALS 3,
        "! MinimumLotSizeQuantity
        minimum_lot_size_quantity  TYPE p LENGTH 7 DECIMALS 3,
        "! LotSizeRoundingQuantity
        lot_size_rounding_quantity TYPE p LENGTH 7 DECIMALS 3,
        "! LotSizingProcedure
        lot_sizing_procedure       TYPE c LENGTH 2,
        "! MRPType
        mrptype                    TYPE c LENGTH 2,
        "! MRPResponsible
        mrpresponsible             TYPE c LENGTH 3,
        "! SafetyStockQuantity
        safety_stock_quantity      TYPE p LENGTH 7 DECIMALS 3,
        "! MinimumSafetyStockQuantity
        minimum_safety_stock_quant TYPE p LENGTH 7 DECIMALS 3,
        "! PlanningTimeFence
        planning_time_fence        TYPE c LENGTH 3,
        "! ABCIndicator
        abcindicator               TYPE c LENGTH 1,
        "! MaximumStockQuantity
        maximum_stock_quantity     TYPE p LENGTH 7 DECIMALS 3,
        "! ReorderThresholdQuantity
        reorder_threshold_quantity TYPE p LENGTH 7 DECIMALS 3,
        "! PlannedDeliveryDurationInDays
        planned_delivery_duration  TYPE p LENGTH 2 DECIMALS 0,
        "! SafetyDuration
        safety_duration            TYPE c LENGTH 2,
        "! PlanningStrategyGroup
        planning_strategy_group    TYPE c LENGTH 2,
        "! TotalReplenishmentLeadTime
        total_replenishment_lead_t TYPE p LENGTH 2 DECIMALS 0,
        "! ProcurementType
        procurement_type           TYPE c LENGTH 1,
        "! ProcurementSubType
        procurement_sub_type       TYPE c LENGTH 2,
        "! AssemblyScrapPercent
        assembly_scrap_percent     TYPE p LENGTH 3 DECIMALS 2,
        "! AvailabilityCheckType
        availability_check_type    TYPE c LENGTH 2,
        "! GoodsReceiptDuration
        goods_receipt_duration     TYPE p LENGTH 2 DECIMALS 0,
        "! MRPGroup
        mrpgroup                   TYPE c LENGTH 4,
        "! BaseUnit
        base_unit                  TYPE c LENGTH 3,
      END OF tys_a_product_supply_plannin_2,
      "! <p class="shorttext synchronized">List of A_ProductSupplyPlanningType</p>
      tyt_a_product_supply_plannin_2 TYPE STANDARD TABLE OF tys_a_product_supply_plannin_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">A_ProductWorkSchedulingType</p>
      BEGIN OF tys_a_product_work_schedulin_2,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> Plant
        plant                      TYPE c LENGTH 4,
        "! MaterialBaseQuantity
        material_base_quantity     TYPE p LENGTH 7 DECIMALS 3,
        "! UnlimitedOverDelivIsAllowed
        unlimited_over_deliv_is_al TYPE abap_bool,
        "! OverDelivToleranceLimit
        over_deliv_tolerance_limit TYPE p LENGTH 2 DECIMALS 1,
        "! UnderDelivToleranceLimit
        under_deliv_tolerance_limi TYPE p LENGTH 2 DECIMALS 1,
        "! ProductionInvtryManagedLoc
        production_invtry_managed  TYPE c LENGTH 4,
        "! BaseUnit
        base_unit                  TYPE c LENGTH 3,
      END OF tys_a_product_work_schedulin_2,
      "! <p class="shorttext synchronized">List of A_ProductWorkSchedulingType</p>
      tyt_a_product_work_schedulin_2 TYPE STANDARD TABLE OF tys_a_product_work_schedulin_2 WITH DEFAULT KEY.


    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the entity sets</p>
      BEGIN OF gcs_entity_set,
        "! A_ClfnClassForKeyDate
        "! <br/> Collection of type 'A_ClfnClassForKeyDateType'
        a_clfn_class_for_key_date  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_CLFN_CLASS_FOR_KEY_DATE',
        "! A_ClfnProduct
        "! <br/> Collection of type 'A_ClfnProductType'
        a_clfn_product             TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_CLFN_PRODUCT',
        "! A_ProductCharc
        "! <br/> Collection of type 'A_ProductCharcType'
        a_product_charc            TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_CHARC',
        "! A_ProductCharcValue
        "! <br/> Collection of type 'A_ProductCharcValueType'
        a_product_charc_value      TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_CHARC_VALUE',
        "! A_ProductClass
        "! <br/> Collection of type 'A_ProductClassType'
        a_product_class            TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_CLASS',
        "! A_ProductClassCharc
        "! <br/> Collection of type 'A_ProductClassCharcType'
        a_product_class_charc      TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_CLASS_CHARC',
        "! A_ProductDescription
        "! <br/> Collection of type 'A_ProductDescriptionType'
        a_product_description      TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_DESCRIPTION',
        "! A_ProductPlant
        "! <br/> Collection of type 'A_ProductPlantType'
        a_product_plant            TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_PLANT',
        "! A_ProductPlantProcurement
        "! <br/> Collection of type 'A_ProductPlantProcurementType'
        a_product_plant_procuremen TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_PLANT_PROCUREMEN',
        "! A_ProductSalesDelivery
        "! <br/> Collection of type 'A_ProductSalesDeliveryType'
        a_product_sales_delivery   TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_SALES_DELIVERY',
        "! A_ProductSalesTax
        "! <br/> Collection of type 'A_ProductSalesTaxType'
        a_product_sales_tax        TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_SALES_TAX',
        "! A_ProductStorageLocation
        "! <br/> Collection of type 'A_ProductStorageLocationType'
        a_product_storage_location TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_STORAGE_LOCATION',
        "! A_ProductSupplyPlanning
        "! <br/> Collection of type 'A_ProductSupplyPlanningType'
        a_product_supply_planning  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_SUPPLY_PLANNING',
        "! A_ProductWorkScheduling
        "! <br/> Collection of type 'A_ProductWorkSchedulingType'
        a_product_work_scheduling  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'A_PRODUCT_WORK_SCHEDULING',
      END OF gcs_entity_set .

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for entity types</p>
      BEGIN OF gcs_entity_type,
        "! <p class="shorttext synchronized">Internal names for A_ClfnClassForKeyDateType</p>
        "! See also structure type {@link ..tys_a_clfn_class_for_key_dat_2}
        BEGIN OF a_clfn_class_for_key_dat_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_clfn_class_for_key_dat_2,
        "! <p class="shorttext synchronized">Internal names for A_ClfnProductType</p>
        "! See also structure type {@link ..tys_a_clfn_product_type}
        BEGIN OF a_clfn_product_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_Description
            to_description       TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_DESCRIPTION',
            "! to_Plant
            to_plant             TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PLANT',
            "! to_ProductCharc
            to_product_charc     TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PRODUCT_CHARC',
            "! to_ProductClass
            to_product_class     TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PRODUCT_CLASS',
            "! to_ProductSalesTax
            to_product_sales_tax TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PRODUCT_SALES_TAX',
            "! to_SalesDelivery
            to_sales_delivery    TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_SALES_DELIVERY',
          END OF navigation,
        END OF a_clfn_product_type,
        "! <p class="shorttext synchronized">Internal names for A_ProductCharcType</p>
        "! See also structure type {@link ..tys_a_product_charc_type}
        BEGIN OF a_product_charc_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_Valuation
            to_valuation TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_VALUATION',
          END OF navigation,
        END OF a_product_charc_type,
        "! <p class="shorttext synchronized">Internal names for A_ProductCharcValueType</p>
        "! See also structure type {@link ..tys_a_product_charc_value_type}
        BEGIN OF a_product_charc_value_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_charc_value_type,
        "! <p class="shorttext synchronized">Internal names for A_ProductClassCharcType</p>
        "! See also structure type {@link ..tys_a_product_class_charc_type}
        BEGIN OF a_product_class_charc_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_Valuation
            to_valuation TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_VALUATION',
          END OF navigation,
        END OF a_product_class_charc_type,
        "! <p class="shorttext synchronized">Internal names for A_ProductClassType</p>
        "! See also structure type {@link ..tys_a_product_class_type}
        BEGIN OF a_product_class_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_Characteristics
            to_characteristics TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_CHARACTERISTICS',
            "! to_ClassDetails
            to_class_details   TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_CLASS_DETAILS',
          END OF navigation,
        END OF a_product_class_type,
        "! <p class="shorttext synchronized">Internal names for A_ProductDescriptionType</p>
        "! See also structure type {@link ..tys_a_product_description_type}
        BEGIN OF a_product_description_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_description_type,
        "! <p class="shorttext synchronized">Internal names for A_ProductPlantProcurementType</p>
        "! See also structure type {@link ..tys_a_product_plant_procurem_2}
        BEGIN OF a_product_plant_procurem_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_plant_procurem_2,
        "! <p class="shorttext synchronized">Internal names for A_ProductPlantType</p>
        "! See also structure type {@link ..tys_a_product_plant_type}
        BEGIN OF a_product_plant_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! to_ProductPlantProcurement
            to_product_plant_procureme TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PRODUCT_PLANT_PROCUREME',
            "! to_ProductSupplyPlanning
            to_product_supply_planning TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PRODUCT_SUPPLY_PLANNING',
            "! to_ProductWorkScheduling
            to_product_work_scheduling TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_PRODUCT_WORK_SCHEDULING',
            "! to_StorageLocation
            to_storage_location        TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TO_STORAGE_LOCATION',
          END OF navigation,
        END OF a_product_plant_type,
        "! <p class="shorttext synchronized">Internal names for A_ProductSalesDeliveryType</p>
        "! See also structure type {@link ..tys_a_product_sales_delivery_t}
        BEGIN OF a_product_sales_delivery_t,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_sales_delivery_t,
        "! <p class="shorttext synchronized">Internal names for A_ProductSalesTaxType</p>
        "! See also structure type {@link ..tys_a_product_sales_tax_type}
        BEGIN OF a_product_sales_tax_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_sales_tax_type,
        "! <p class="shorttext synchronized">Internal names for A_ProductStorageLocationType</p>
        "! See also structure type {@link ..tys_a_product_storage_locati_2}
        BEGIN OF a_product_storage_locati_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_storage_locati_2,
        "! <p class="shorttext synchronized">Internal names for A_ProductSupplyPlanningType</p>
        "! See also structure type {@link ..tys_a_product_supply_plannin_2}
        BEGIN OF a_product_supply_plannin_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_supply_plannin_2,
        "! <p class="shorttext synchronized">Internal names for A_ProductWorkSchedulingType</p>
        "! See also structure type {@link ..tys_a_product_work_schedulin_2}
        BEGIN OF a_product_work_schedulin_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF a_product_work_schedulin_2,
      END OF gcs_entity_type.


    METHODS /iwbep/if_v4_mp_basic_pm~define REDEFINITION.


  PRIVATE SECTION.

    "! <p class="shorttext synchronized">Model</p>
    DATA mo_model TYPE REF TO /iwbep/if_v4_pm_model.


    "! <p class="shorttext synchronized">Define A_ClfnClassForKeyDateType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_clfn_class_for_key_dat_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ClfnProductType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_clfn_product_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductCharcType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_charc_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductCharcValueType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_charc_value_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductClassCharcType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_class_charc_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductClassType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_class_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductDescriptionType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_description_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductPlantProcurementType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_plant_procurem_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductPlantType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_plant_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductSalesDeliveryType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_sales_delivery_t RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductSalesTaxType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_sales_tax_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductStorageLocationType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_storage_locati_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductSupplyPlanningType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_supply_plannin_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define A_ProductWorkSchedulingType</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_a_product_work_schedulin_2 RAISING /iwbep/cx_gateway.

ENDCLASS.



CLASS ZSC_API_CLFN_PRODUCT IMPLEMENTATION.


  METHOD /iwbep/if_v4_mp_basic_pm~define.

    mo_model = io_model.
    mo_model->set_schema_namespace( 'API_CLFN_PRODUCT_SRV' ) ##NO_TEXT.

    def_a_clfn_class_for_key_dat_2( ).
    def_a_clfn_product_type( ).
    def_a_product_charc_type( ).
    def_a_product_charc_value_type( ).
    def_a_product_class_charc_type( ).
    def_a_product_class_type( ).
    def_a_product_description_type( ).
    def_a_product_plant_procurem_2( ).
    def_a_product_plant_type( ).
    def_a_product_sales_delivery_t( ).
    def_a_product_sales_tax_type( ).
    def_a_product_storage_locati_2( ).
    def_a_product_supply_plannin_2( ).
    def_a_product_work_schedulin_2( ).

  ENDMETHOD.


  METHOD def_a_clfn_class_for_key_dat_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_CLFN_CLASS_FOR_KEY_DAT_2'
                                    is_structure              = VALUE tys_a_clfn_class_for_key_dat_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ClfnClassForKeyDateType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_CLFN_CLASS_FOR_KEY_DATE' ).
    lo_entity_set->set_edm_name( 'A_ClfnClassForKeyDate' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS_INTERNAL_ID' ).
    lo_primitive_property->set_edm_name( 'ClassInternalID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS_TYPE' ).
    lo_primitive_property->set_edm_name( 'ClassType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS_TYPE_NAME' ).
    lo_primitive_property->set_edm_name( 'ClassTypeName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS' ).
    lo_primitive_property->set_edm_name( 'Class' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS_STATUS' ).
    lo_primitive_property->set_edm_name( 'ClassStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS_STATUS_NAME' ).
    lo_primitive_property->set_edm_name( 'ClassStatusName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS_GROUP' ).
    lo_primitive_property->set_edm_name( 'ClassGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS_GROUP_NAME' ).
    lo_primitive_property->set_edm_name( 'ClassGroupName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS_SEARCH_AUTH_GRP' ).
    lo_primitive_property->set_edm_name( 'ClassSearchAuthGrp' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS_CLASSFCTN_AUTH_GRP' ).
    lo_primitive_property->set_edm_name( 'ClassClassfctnAuthGrp' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS_MAINT_AUTH_GRP' ).
    lo_primitive_property->set_edm_name( 'ClassMaintAuthGrp' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOC_NUMBER' ).
    lo_primitive_property->set_edm_name( 'DocNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 25 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_TYPE' ).
    lo_primitive_property->set_edm_name( 'DocumentType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_PART' ).
    lo_primitive_property->set_edm_name( 'DocumentPart' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_VERSION' ).
    lo_primitive_property->set_edm_name( 'DocumentVersion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SAME_CLASSFCTN_REACTION' ).
    lo_primitive_property->set_edm_name( 'SameClassfctnReaction' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS_STANDARD_ORG_NAME' ).
    lo_primitive_property->set_edm_name( 'ClassStandardOrgName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS_STANDARD_NUMBER' ).
    lo_primitive_property->set_edm_name( 'ClassStandardNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS_STANDARD_START_DATE' ).
    lo_primitive_property->set_edm_name( 'ClassStandardStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS_STANDARD_VERSION_STA' ).
    lo_primitive_property->set_edm_name( 'ClassStandardVersionStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS_STANDARD_VERSION' ).
    lo_primitive_property->set_edm_name( 'ClassStandardVersion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS_STANDARD_CHARC_TABLE' ).
    lo_primitive_property->set_edm_name( 'ClassStandardCharcTable' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATION_DATE' ).
    lo_primitive_property->set_edm_name( 'CreationDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGE_DATE' ).
    lo_primitive_property->set_edm_name( 'LastChangeDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS_IS_LOCAL' ).
    lo_primitive_property->set_edm_name( 'ClassIsLocal' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_START_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_END_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS_LAST_CHANGED_DATE_TI' ).
    lo_primitive_property->set_edm_name( 'ClassLastChangedDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'KEY_DATE' ).
    lo_primitive_property->set_edm_name( 'KeyDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

  ENDMETHOD.


  METHOD def_a_clfn_product_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_CLFN_PRODUCT_TYPE'
                                    is_structure              = VALUE tys_a_clfn_product_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ClfnProductType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_CLFN_PRODUCT' ).
    lo_entity_set->set_edm_name( 'A_ClfnProduct' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_TYPE' ).
    lo_primitive_property->set_edm_name( 'ProductType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CROSS_PLANT_STATUS' ).
    lo_primitive_property->set_edm_name( 'CrossPlantStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CROSS_PLANT_STATUS_VALIDIT' ).
    lo_primitive_property->set_edm_name( 'CrossPlantStatusValidityDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATION_DATE' ).
    lo_primitive_property->set_edm_name( 'CreationDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'CreatedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGE_DATE' ).
    lo_primitive_property->set_edm_name( 'LastChangeDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'LastChangedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_MARKED_FOR_DELETION' ).
    lo_primitive_property->set_edm_name( 'IsMarkedForDeletion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_OLD_ID' ).
    lo_primitive_property->set_edm_name( 'ProductOldID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'GROSS_WEIGHT' ).
    lo_primitive_property->set_edm_name( 'GrossWeight' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PURCHASE_ORDER_QUANTITY_UN' ).
    lo_primitive_property->set_edm_name( 'PurchaseOrderQuantityUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SOURCE_OF_SUPPLY' ).
    lo_primitive_property->set_edm_name( 'SourceOfSupply' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WEIGHT_UNIT' ).
    lo_primitive_property->set_edm_name( 'WeightUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'NET_WEIGHT' ).
    lo_primitive_property->set_edm_name( 'NetWeight' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY_OF_ORIGIN' ).
    lo_primitive_property->set_edm_name( 'CountryOfOrigin' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMPETITOR_ID' ).
    lo_primitive_property->set_edm_name( 'CompetitorID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_GROUP' ).
    lo_primitive_property->set_edm_name( 'ProductGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_UNIT' ).
    lo_primitive_property->set_edm_name( 'BaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ITEM_CATEGORY_GROUP' ).
    lo_primitive_property->set_edm_name( 'ItemCategoryGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_HIERARCHY' ).
    lo_primitive_property->set_edm_name( 'ProductHierarchy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DIVISION' ).
    lo_primitive_property->set_edm_name( 'Division' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VARBL_PUR_ORD_UNIT_IS_ACTI' ).
    lo_primitive_property->set_edm_name( 'VarblPurOrdUnitIsActive' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VOLUME_UNIT' ).
    lo_primitive_property->set_edm_name( 'VolumeUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL_VOLUME' ).
    lo_primitive_property->set_edm_name( 'MaterialVolume' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ANPCODE' ).
    lo_primitive_property->set_edm_name( 'ANPCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 9 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BRAND' ).
    lo_primitive_property->set_edm_name( 'Brand' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROCUREMENT_RULE' ).
    lo_primitive_property->set_edm_name( 'ProcurementRule' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALIDITY_START_DATE' ).
    lo_primitive_property->set_edm_name( 'ValidityStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LOW_LEVEL_CODE' ).
    lo_primitive_property->set_edm_name( 'LowLevelCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_NO_IN_GEN_PROD_IN_PRE' ).
    lo_primitive_property->set_edm_name( 'ProdNoInGenProdInPrepackProd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SERIAL_IDENTIFIER_ASSGMT_P' ).
    lo_primitive_property->set_edm_name( 'SerialIdentifierAssgmtProfile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SIZE_OR_DIMENSION_TEXT' ).
    lo_primitive_property->set_edm_name( 'SizeOrDimensionText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 32 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INDUSTRY_STANDARD_NAME' ).
    lo_primitive_property->set_edm_name( 'IndustryStandardName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_STANDARD_ID' ).
    lo_primitive_property->set_edm_name( 'ProductStandardID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_ARTICLE_NUMB' ).
    lo_primitive_property->set_edm_name( 'InternationalArticleNumberCat' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_IS_CONFIGURABLE' ).
    lo_primitive_property->set_edm_name( 'ProductIsConfigurable' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_BATCH_MANAGEMENT_REQUIR' ).
    lo_primitive_property->set_edm_name( 'IsBatchManagementRequired' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EXTERNAL_PRODUCT_GROUP' ).
    lo_primitive_property->set_edm_name( 'ExternalProductGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CROSS_PLANT_CONFIGURABLE_P' ).
    lo_primitive_property->set_edm_name( 'CrossPlantConfigurableProduct' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SERIAL_NO_EXPLICITNESS_LEV' ).
    lo_primitive_property->set_edm_name( 'SerialNoExplicitnessLevel' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_MANUFACTURER_NUMBE' ).
    lo_primitive_property->set_edm_name( 'ProductManufacturerNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MANUFACTURER_PART_PROFILE' ).
    lo_primitive_property->set_edm_name( 'ManufacturerPartProfile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHANGE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'ChangeNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL_REVISION_LEVEL' ).
    lo_primitive_property->set_edm_name( 'MaterialRevisionLevel' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HANDLING_INDICATOR' ).
    lo_primitive_property->set_edm_name( 'HandlingIndicator' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WAREHOUSE_PRODUCT_GROUP' ).
    lo_primitive_property->set_edm_name( 'WarehouseProductGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WAREHOUSE_STORAGE_CONDITIO' ).
    lo_primitive_property->set_edm_name( 'WarehouseStorageCondition' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STANDARD_HANDLING_UNIT_TYP' ).
    lo_primitive_property->set_edm_name( 'StandardHandlingUnitType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SERIAL_NUMBER_PROFILE' ).
    lo_primitive_property->set_edm_name( 'SerialNumberProfile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ADJUSTMENT_PROFILE' ).
    lo_primitive_property->set_edm_name( 'AdjustmentProfile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PREFERRED_UNIT_OF_MEASURE' ).
    lo_primitive_property->set_edm_name( 'PreferredUnitOfMeasure' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_PILFERABLE' ).
    lo_primitive_property->set_edm_name( 'IsPilferable' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_RELEVANT_FOR_HZDS_SUBST' ).
    lo_primitive_property->set_edm_name( 'IsRelevantForHzdsSubstances' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'QUARANTINE_PERIOD' ).
    lo_primitive_property->set_edm_name( 'QuarantinePeriod' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TIME_UNIT_FOR_QUARANTINE_P' ).
    lo_primitive_property->set_edm_name( 'TimeUnitForQuarantinePeriod' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'QUALITY_INSPECTION_GROUP' ).
    lo_primitive_property->set_edm_name( 'QualityInspectionGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUTHORIZATION_GROUP' ).
    lo_primitive_property->set_edm_name( 'AuthorizationGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HANDLING_UNIT_TYPE' ).
    lo_primitive_property->set_edm_name( 'HandlingUnitType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HAS_VARIABLE_TARE_WEIGHT' ).
    lo_primitive_property->set_edm_name( 'HasVariableTareWeight' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAXIMUM_PACKAGING_LENGTH' ).
    lo_primitive_property->set_edm_name( 'MaximumPackagingLength' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAXIMUM_PACKAGING_WIDTH' ).
    lo_primitive_property->set_edm_name( 'MaximumPackagingWidth' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAXIMUM_PACKAGING_HEIGHT' ).
    lo_primitive_property->set_edm_name( 'MaximumPackagingHeight' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UNIT_FOR_MAX_PACKAGING_DIM' ).
    lo_primitive_property->set_edm_name( 'UnitForMaxPackagingDimensions' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_DESCRIPTION' ).
    lo_navigation_property->set_edm_name( 'to_Description' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_DESCRIPTION_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PLANT' ).
    lo_navigation_property->set_edm_name( 'to_Plant' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_PLANT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PRODUCT_CHARC' ).
    lo_navigation_property->set_edm_name( 'to_ProductCharc' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_CHARC_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PRODUCT_CLASS' ).
    lo_navigation_property->set_edm_name( 'to_ProductClass' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_CLASS_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PRODUCT_SALES_TAX' ).
    lo_navigation_property->set_edm_name( 'to_ProductSalesTax' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_SALES_TAX_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_SALES_DELIVERY' ).
    lo_navigation_property->set_edm_name( 'to_SalesDelivery' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_SALES_DELIVERY_T' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_a_product_charc_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_CHARC_TYPE'
                                    is_structure              = VALUE tys_a_product_charc_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductCharcType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_CHARC' ).
    lo_entity_set->set_edm_name( 'A_ProductCharc' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 90 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_INTERNAL_ID' ).
    lo_primitive_property->set_edm_name( 'CharcInternalID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS_TYPE' ).
    lo_primitive_property->set_edm_name( 'ClassType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'KEY_DATE' ).
    lo_primitive_property->set_edm_name( 'KeyDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHANGE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'ChangeNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_VALUATION' ).
    lo_navigation_property->set_edm_name( 'to_Valuation' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_CHARC_VALUE_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_a_product_charc_value_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_CHARC_VALUE_TYPE'
                                    is_structure              = VALUE tys_a_product_charc_value_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductCharcValueType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_CHARC_VALUE' ).
    lo_entity_set->set_edm_name( 'A_ProductCharcValue' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 90 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS_TYPE' ).
    lo_primitive_property->set_edm_name( 'ClassType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_INTERNAL_ID' ).
    lo_primitive_property->set_edm_name( 'CharcInternalID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_VALUE_POSITION_NUMBE' ).
    lo_primitive_property->set_edm_name( 'CharcValuePositionNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'KEY_DATE' ).
    lo_primitive_property->set_edm_name( 'KeyDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHANGE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'ChangeNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_VALUE_DEPENDENCY' ).
    lo_primitive_property->set_edm_name( 'CharcValueDependency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_VALUE' ).
    lo_primitive_property->set_edm_name( 'CharcValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_FROM_NUMERIC_VALUE' ).
    lo_primitive_property->set_edm_name( 'CharcFromNumericValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Double' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_FROM_NUMERIC_VALUE_U' ).
    lo_primitive_property->set_edm_name( 'CharcFromNumericValueUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_TO_NUMERIC_VALUE' ).
    lo_primitive_property->set_edm_name( 'CharcToNumericValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Double' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_TO_NUMERIC_VALUE_UNI' ).
    lo_primitive_property->set_edm_name( 'CharcToNumericValueUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_FROM_DECIMAL_VALUE' ).
    lo_primitive_property->set_edm_name( 'CharcFromDecimalValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 31 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 14 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_TO_DECIMAL_VALUE' ).
    lo_primitive_property->set_edm_name( 'CharcToDecimalValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 31 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 14 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_FROM_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'CharcFromAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_TO_AMOUNT' ).
    lo_primitive_property->set_edm_name( 'CharcToAmount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 24 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CURRENCY' ).
    lo_primitive_property->set_edm_name( 'Currency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_FROM_DATE' ).
    lo_primitive_property->set_edm_name( 'CharcFromDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_TO_DATE' ).
    lo_primitive_property->set_edm_name( 'CharcToDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_FROM_TIME' ).
    lo_primitive_property->set_edm_name( 'CharcFromTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_TO_TIME' ).
    lo_primitive_property->set_edm_name( 'CharcToTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'Time' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARACTERISTIC_AUTHOR' ).
    lo_primitive_property->set_edm_name( 'CharacteristicAuthor' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_MAINT_AUTH_GRP' ).
    lo_primitive_property->set_edm_name( 'CharcMaintAuthGrp' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_product_class_charc_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_CLASS_CHARC_TYPE'
                                    is_structure              = VALUE tys_a_product_class_charc_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductClassCharcType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_CLASS_CHARC' ).
    lo_entity_set->set_edm_name( 'A_ProductClassCharc' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 90 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS_INTERNAL_ID' ).
    lo_primitive_property->set_edm_name( 'ClassInternalID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARC_INTERNAL_ID' ).
    lo_primitive_property->set_edm_name( 'CharcInternalID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'KEY_DATE' ).
    lo_primitive_property->set_edm_name( 'KeyDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHANGE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'ChangeNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS_TYPE' ).
    lo_primitive_property->set_edm_name( 'ClassType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_VALUATION' ).
    lo_navigation_property->set_edm_name( 'to_Valuation' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_CHARC_VALUE_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_a_product_class_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_CLASS_TYPE'
                                    is_structure              = VALUE tys_a_product_class_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductClassType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_CLASS' ).
    lo_entity_set->set_edm_name( 'A_ProductClass' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 90 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS_INTERNAL_ID' ).
    lo_primitive_property->set_edm_name( 'ClassInternalID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'KEY_DATE' ).
    lo_primitive_property->set_edm_name( 'KeyDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHANGE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'ChangeNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CLASS_TYPE' ).
    lo_primitive_property->set_edm_name( 'ClassType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_CHARACTERISTICS' ).
    lo_navigation_property->set_edm_name( 'to_Characteristics' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_CLASS_CHARC_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_CLASS_DETAILS' ).
    lo_navigation_property->set_edm_name( 'to_ClassDetails' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_CLFN_CLASS_FOR_KEY_DAT_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_a_product_description_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_DESCRIPTION_TYPE'
                                    is_structure              = VALUE tys_a_product_description_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductDescriptionType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_DESCRIPTION' ).
    lo_entity_set->set_edm_name( 'A_ProductDescription' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'Language' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_DESCRIPTION' ).
    lo_primitive_property->set_edm_name( 'ProductDescription' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_product_plant_procurem_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_PLANT_PROCUREM_2'
                                    is_structure              = VALUE tys_a_product_plant_procurem_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductPlantProcurementType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_PLANT_PROCUREMEN' ).
    lo_entity_set->set_edm_name( 'A_ProductPlantProcurement' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_AUTO_PUR_ORD_CREATION_A' ).
    lo_primitive_property->set_edm_name( 'IsAutoPurOrdCreationAllowed' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_SOURCE_LIST_REQUIRED' ).
    lo_primitive_property->set_edm_name( 'IsSourceListRequired' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SOURCE_OF_SUPPLY_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'SourceOfSupplyCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_product_plant_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_PLANT_TYPE'
                                    is_structure              = VALUE tys_a_product_plant_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductPlantType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_PLANT' ).
    lo_entity_set->set_edm_name( 'A_ProductPlant' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PURCHASING_GROUP' ).
    lo_primitive_property->set_edm_name( 'PurchasingGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY_OF_ORIGIN' ).
    lo_primitive_property->set_edm_name( 'CountryOfOrigin' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REGION_OF_ORIGIN' ).
    lo_primitive_property->set_edm_name( 'RegionOfOrigin' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCTION_INVTRY_MANAGED' ).
    lo_primitive_property->set_edm_name( 'ProductionInvtryManagedLoc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROFILE_CODE' ).
    lo_primitive_property->set_edm_name( 'ProfileCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROFILE_VALIDITY_START_DAT' ).
    lo_primitive_property->set_edm_name( 'ProfileValidityStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AVAILABILITY_CHECK_TYPE' ).
    lo_primitive_property->set_edm_name( 'AvailabilityCheckType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FISCAL_YEAR_VARIANT' ).
    lo_primitive_property->set_edm_name( 'FiscalYearVariant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PERIOD_TYPE' ).
    lo_primitive_property->set_edm_name( 'PeriodType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROFIT_CENTER' ).
    lo_primitive_property->set_edm_name( 'ProfitCenter' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMMODITY' ).
    lo_primitive_property->set_edm_name( 'Commodity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 17 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'GOODS_RECEIPT_DURATION' ).
    lo_primitive_property->set_edm_name( 'GoodsReceiptDuration' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAINTENANCE_STATUS_NAME' ).
    lo_primitive_property->set_edm_name( 'MaintenanceStatusName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_MARKED_FOR_DELETION' ).
    lo_primitive_property->set_edm_name( 'IsMarkedForDeletion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MRPTYPE' ).
    lo_primitive_property->set_edm_name( 'MRPType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MRPRESPONSIBLE' ).
    lo_primitive_property->set_edm_name( 'MRPResponsible' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ABCINDICATOR' ).
    lo_primitive_property->set_edm_name( 'ABCIndicator' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MINIMUM_LOT_SIZE_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'MinimumLotSizeQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAXIMUM_LOT_SIZE_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'MaximumLotSizeQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FIXED_LOT_SIZE_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'FixedLotSizeQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONSUMPTION_TAX_CTRL_CODE' ).
    lo_primitive_property->set_edm_name( 'ConsumptionTaxCtrlCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 16 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_CO_PRODUCT' ).
    lo_primitive_property->set_edm_name( 'IsCoProduct' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_IS_CONFIGURABLE' ).
    lo_primitive_property->set_edm_name( 'ProductIsConfigurable' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STOCK_DETERMINATION_GROUP' ).
    lo_primitive_property->set_edm_name( 'StockDeterminationGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STOCK_IN_TRANSFER_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'StockInTransferQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STOCK_IN_TRANSIT_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'StockInTransitQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HAS_POST_TO_INSPECTION_STO' ).
    lo_primitive_property->set_edm_name( 'HasPostToInspectionStock' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_BATCH_MANAGEMENT_REQUIR' ).
    lo_primitive_property->set_edm_name( 'IsBatchManagementRequired' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SERIAL_NUMBER_PROFILE' ).
    lo_primitive_property->set_edm_name( 'SerialNumberProfile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_NEGATIVE_STOCK_ALLOWED' ).
    lo_primitive_property->set_edm_name( 'IsNegativeStockAllowed' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'GOODS_RECEIPT_BLOCKED_STOC' ).
    lo_primitive_property->set_edm_name( 'GoodsReceiptBlockedStockQty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HAS_CONSIGNMENT_CTRL' ).
    lo_primitive_property->set_edm_name( 'HasConsignmentCtrl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FISCAL_YEAR_CURRENT_PERIOD' ).
    lo_primitive_property->set_edm_name( 'FiscalYearCurrentPeriod' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FISCAL_MONTH_CURRENT_PERIO' ).
    lo_primitive_property->set_edm_name( 'FiscalMonthCurrentPeriod' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROCUREMENT_TYPE' ).
    lo_primitive_property->set_edm_name( 'ProcurementType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_INTERNAL_BATCH_MANAGED' ).
    lo_primitive_property->set_edm_name( 'IsInternalBatchManaged' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_CFOPCATEGORY' ).
    lo_primitive_property->set_edm_name( 'ProductCFOPCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_IS_EXCISE_TAX_RELE' ).
    lo_primitive_property->set_edm_name( 'ProductIsExciseTaxRelevant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_UNIT' ).
    lo_primitive_property->set_edm_name( 'BaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PRODUCT_PLANT_PROCUREME' ).
    lo_navigation_property->set_edm_name( 'to_ProductPlantProcurement' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_PLANT_PROCUREM_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PRODUCT_SUPPLY_PLANNING' ).
    lo_navigation_property->set_edm_name( 'to_ProductSupplyPlanning' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_SUPPLY_PLANNIN_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_PRODUCT_WORK_SCHEDULING' ).
    lo_navigation_property->set_edm_name( 'to_ProductWorkScheduling' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_WORK_SCHEDULIN_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TO_STORAGE_LOCATION' ).
    lo_navigation_property->set_edm_name( 'to_StorageLocation' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'A_PRODUCT_STORAGE_LOCATI_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_a_product_sales_delivery_t.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_SALES_DELIVERY_T'
                                    is_structure              = VALUE tys_a_product_sales_delivery_t( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductSalesDeliveryType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_SALES_DELIVERY' ).
    lo_entity_set->set_edm_name( 'A_ProductSalesDelivery' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_SALES_ORG' ).
    lo_primitive_property->set_edm_name( 'ProductSalesOrg' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_DISTRIBUTION_CHNL' ).
    lo_primitive_property->set_edm_name( 'ProductDistributionChnl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MINIMUM_ORDER_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'MinimumOrderQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLYING_PLANT' ).
    lo_primitive_property->set_edm_name( 'SupplyingPlant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICE_SPECIFICATION_PRODUC' ).
    lo_primitive_property->set_edm_name( 'PriceSpecificationProductGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACCOUNT_DETN_PRODUCT_GROUP' ).
    lo_primitive_property->set_edm_name( 'AccountDetnProductGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELIVERY_NOTE_PROC_MIN_DEL' ).
    lo_primitive_property->set_edm_name( 'DeliveryNoteProcMinDelivQty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ITEM_CATEGORY_GROUP' ).
    lo_primitive_property->set_edm_name( 'ItemCategoryGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELIVERY_QUANTITY_UNIT' ).
    lo_primitive_property->set_edm_name( 'DeliveryQuantityUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELIVERY_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'DeliveryQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_SALES_STATUS' ).
    lo_primitive_property->set_edm_name( 'ProductSalesStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_SALES_STATUS_VALID' ).
    lo_primitive_property->set_edm_name( 'ProductSalesStatusValidityDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_MEASURE_UNIT' ).
    lo_primitive_property->set_edm_name( 'SalesMeasureUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_MARKED_FOR_DELETION' ).
    lo_primitive_property->set_edm_name( 'IsMarkedForDeletion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_HIERARCHY' ).
    lo_primitive_property->set_edm_name( 'ProductHierarchy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FIRST_SALES_SPEC_PRODUCT_G' ).
    lo_primitive_property->set_edm_name( 'FirstSalesSpecProductGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SECOND_SALES_SPEC_PRODUCT' ).
    lo_primitive_property->set_edm_name( 'SecondSalesSpecProductGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'THIRD_SALES_SPEC_PRODUCT_G' ).
    lo_primitive_property->set_edm_name( 'ThirdSalesSpecProductGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FOURTH_SALES_SPEC_PRODUCT' ).
    lo_primitive_property->set_edm_name( 'FourthSalesSpecProductGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FIFTH_SALES_SPEC_PRODUCT_G' ).
    lo_primitive_property->set_edm_name( 'FifthSalesSpecProductGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MINIMUM_MAKE_TO_ORDER_ORDE' ).
    lo_primitive_property->set_edm_name( 'MinimumMakeToOrderOrderQty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_UNIT' ).
    lo_primitive_property->set_edm_name( 'BaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_product_sales_tax_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_SALES_TAX_TYPE'
                                    is_structure              = VALUE tys_a_product_sales_tax_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductSalesTaxType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_SALES_TAX' ).
    lo_entity_set->set_edm_name( 'A_ProductSalesTax' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY' ).
    lo_primitive_property->set_edm_name( 'Country' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'TaxCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_CLASSIFICATION' ).
    lo_primitive_property->set_edm_name( 'TaxClassification' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

  ENDMETHOD.


  METHOD def_a_product_storage_locati_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_STORAGE_LOCATI_2'
                                    is_structure              = VALUE tys_a_product_storage_locati_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductStorageLocationType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_STORAGE_LOCATION' ).
    lo_entity_set->set_edm_name( 'A_ProductStorageLocation' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STORAGE_LOCATION' ).
    lo_primitive_property->set_edm_name( 'StorageLocation' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WAREHOUSE_STORAGE_BIN' ).
    lo_primitive_property->set_edm_name( 'WarehouseStorageBin' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAINTENANCE_STATUS' ).
    lo_primitive_property->set_edm_name( 'MaintenanceStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PHYSICAL_INVENTORY_BLOCK_I' ).
    lo_primitive_property->set_edm_name( 'PhysicalInventoryBlockInd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATION_DATE' ).
    lo_primitive_property->set_edm_name( 'CreationDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_MARKED_FOR_DELETION' ).
    lo_primitive_property->set_edm_name( 'IsMarkedForDeletion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DATE_OF_LAST_POSTED_CNT_UN' ).
    lo_primitive_property->set_edm_name( 'DateOfLastPostedCntUnRstrcdStk' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INVENTORY_CORRECTION_FACTO' ).
    lo_primitive_property->set_edm_name( 'InventoryCorrectionFactor' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Double' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INVTRY_RESTRICTED_USE_STOC' ).
    lo_primitive_property->set_edm_name( 'InvtryRestrictedUseStockInd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INVTRY_CURRENT_YEAR_STOCK' ).
    lo_primitive_property->set_edm_name( 'InvtryCurrentYearStockInd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INVTRY_QUAL_INSP_CURRENT_Y' ).
    lo_primitive_property->set_edm_name( 'InvtryQualInspCurrentYrStkInd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INVENTORY_BLOCK_STOCK_IND' ).
    lo_primitive_property->set_edm_name( 'InventoryBlockStockInd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INVTRY_REST_STOCK_PREV_PER' ).
    lo_primitive_property->set_edm_name( 'InvtryRestStockPrevPeriodInd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INVENTORY_STOCK_PREV_PERIO' ).
    lo_primitive_property->set_edm_name( 'InventoryStockPrevPeriod' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INVTRY_STOCK_QLTY_INSP_PRE' ).
    lo_primitive_property->set_edm_name( 'InvtryStockQltyInspPrevPeriod' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HAS_INVTRY_BLOCK_STOCK_PRE' ).
    lo_primitive_property->set_edm_name( 'HasInvtryBlockStockPrevPeriod' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FISCAL_YEAR_CURRENT_PERIOD' ).
    lo_primitive_property->set_edm_name( 'FiscalYearCurrentPeriod' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FISCAL_MONTH_CURRENT_PERIO' ).
    lo_primitive_property->set_edm_name( 'FiscalMonthCurrentPeriod' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FISCAL_YEAR_CURRENT_INVTRY' ).
    lo_primitive_property->set_edm_name( 'FiscalYearCurrentInvtryPeriod' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_product_supply_plannin_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_SUPPLY_PLANNIN_2'
                                    is_structure              = VALUE tys_a_product_supply_plannin_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductSupplyPlanningType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_SUPPLY_PLANNING' ).
    lo_entity_set->set_edm_name( 'A_ProductSupplyPlanning' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FIXED_LOT_SIZE_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'FixedLotSizeQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAXIMUM_LOT_SIZE_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'MaximumLotSizeQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MINIMUM_LOT_SIZE_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'MinimumLotSizeQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LOT_SIZE_ROUNDING_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'LotSizeRoundingQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LOT_SIZING_PROCEDURE' ).
    lo_primitive_property->set_edm_name( 'LotSizingProcedure' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MRPTYPE' ).
    lo_primitive_property->set_edm_name( 'MRPType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MRPRESPONSIBLE' ).
    lo_primitive_property->set_edm_name( 'MRPResponsible' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SAFETY_STOCK_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'SafetyStockQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MINIMUM_SAFETY_STOCK_QUANT' ).
    lo_primitive_property->set_edm_name( 'MinimumSafetyStockQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANNING_TIME_FENCE' ).
    lo_primitive_property->set_edm_name( 'PlanningTimeFence' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ABCINDICATOR' ).
    lo_primitive_property->set_edm_name( 'ABCIndicator' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAXIMUM_STOCK_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'MaximumStockQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REORDER_THRESHOLD_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'ReorderThresholdQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANNED_DELIVERY_DURATION' ).
    lo_primitive_property->set_edm_name( 'PlannedDeliveryDurationInDays' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SAFETY_DURATION' ).
    lo_primitive_property->set_edm_name( 'SafetyDuration' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANNING_STRATEGY_GROUP' ).
    lo_primitive_property->set_edm_name( 'PlanningStrategyGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TOTAL_REPLENISHMENT_LEAD_T' ).
    lo_primitive_property->set_edm_name( 'TotalReplenishmentLeadTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROCUREMENT_TYPE' ).
    lo_primitive_property->set_edm_name( 'ProcurementType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROCUREMENT_SUB_TYPE' ).
    lo_primitive_property->set_edm_name( 'ProcurementSubType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ASSEMBLY_SCRAP_PERCENT' ).
    lo_primitive_property->set_edm_name( 'AssemblyScrapPercent' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AVAILABILITY_CHECK_TYPE' ).
    lo_primitive_property->set_edm_name( 'AvailabilityCheckType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'GOODS_RECEIPT_DURATION' ).
    lo_primitive_property->set_edm_name( 'GoodsReceiptDuration' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MRPGROUP' ).
    lo_primitive_property->set_edm_name( 'MRPGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_UNIT' ).
    lo_primitive_property->set_edm_name( 'BaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_a_product_work_schedulin_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'A_PRODUCT_WORK_SCHEDULIN_2'
                                    is_structure              = VALUE tys_a_product_work_schedulin_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'A_ProductWorkSchedulingType' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'A_PRODUCT_WORK_SCHEDULING' ).
    lo_entity_set->set_edm_name( 'A_ProductWorkScheduling' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MATERIAL_BASE_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'MaterialBaseQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UNLIMITED_OVER_DELIV_IS_AL' ).
    lo_primitive_property->set_edm_name( 'UnlimitedOverDelivIsAllowed' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'OVER_DELIV_TOLERANCE_LIMIT' ).
    lo_primitive_property->set_edm_name( 'OverDelivToleranceLimit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UNDER_DELIV_TOLERANCE_LIMI' ).
    lo_primitive_property->set_edm_name( 'UnderDelivToleranceLimit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 1 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCTION_INVTRY_MANAGED' ).
    lo_primitive_property->set_edm_name( 'ProductionInvtryManagedLoc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_UNIT' ).
    lo_primitive_property->set_edm_name( 'BaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.
ENDCLASS.
