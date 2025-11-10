# sapdev.eu - ABAP RAP Reuse Libraries, Utilities and Samples

## Overview

This repository contains reusable ABAP RAP (RESTful ABAP Programming) utilities, base classes, and comprehensive sample applications demonstrating various RAP patterns and scenarios.

## 📚 Table of Contents

- [Core Components](#core-components)
  - [RAP Utilities (`zsapdev_rap`)](#rap-utilities-zsapdev_rap)
- [Sample Applications](#sample-applications)
  - [3D Printer Management - Draft (`zsapdev_rap_sample_3dp`)](#3d-printer-management---draft-zsapdev_rap_sample_3dp)
  - [3D Printer Management - Early Numbering (`zsapdev_rap_sample_3dp_en`)](#3d-printer-management---early-numbering-zsapdev_rap_sample_3dp_en)
  - [3D Printer Management - No Draft (`zsapdev_rap_sample_3dp_nd`)](#3d-printer-management---no-draft-zsapdev_rap_sample_3dp_nd)
  - [RAP Extensibility Enablement (`zsapdev_rap_sample_sap_bo`)](#rap-extensibility-enablement-zsapdev_rap_sample_sap_bo)
  - [RAP Developer Extensibility Provider (`zsapdev_rap_sample_sap_ext`)](#rap-developer-extensibility-provider-zsapdev_rap_sample_sap_ext)
  - [Side-by-Side Extension (`zsapdev_rap_sample_side_by_s4`)](#side-by-side-extension-zsapdev_rap_sample_side_by_s4)
  - [Exchange Rate Sample (`zsapdev_rap_sample_exrate`)](#exchange-rate-sample-zsapdev_rap_sample_exrate)
  - [Code Generation Sample (`zsapdev_rap_sample_codegen`)](#code-generation-sample-zsapdev_rap_sample_codegen)
- [Branch Information](#branch-information)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)

---

## Core Components

### RAP Utilities (`zsapdev_rap`)

A collection of reusable base classes and interfaces for managed RAP applications with draft handling.

**Features:**

- Managed draft handler base implementation (`zcl_sapdev_rap_managed_base`)
- Base interface for managed operations (`zif_sapdev_rap_managed_base`)
- Standardized error messaging (`zcm_sapdev_rap`) implements interface `if_abap_behv_message`
- Admin structure include (`zsapdev_s_rap_admin`)

**Status:**

- ✅ Draft handling: Available
- ⚠️ Mandatory field validation: In progress (available in `onPrem-2023` branch)
  [Developer Guide](https://www.sapdev.eu/rap-painless-mandatory-field-validation/) for mandatory field validation.

---

## Sample Applications

All sample applications are located under `/src/zsapdev_rap_sample/` and demonstrate different RAP patterns and scenarios.

### 3D Printer Management - Draft (`zsapdev_rap_sample_3dp`)

**Pattern:** Managed, Managed UUID Key, Draft

**Key Features:**

- Internal managed numbering with UUID
- UUID converted to string to prevent Edm.Guid conversion by Gateway (`bintohex(entity_key) as EntityKeyChar`) to support data validation
- Draft enabled
- Full CRUD operations
- Parent-child relationship (3D Printer ↔ Nozzle)
- Admin data with user details
- Unit of Measure Value Help

**Components:**

- OData V4 UI Service (`zsapdev_3dp_ui_o4`)

**Frontend:**

* Fiori Elements UI with ADT Preview

**Path:** [`/src/zsapdev_rap_sample/zsapdev_rap_sample_3dp`](/src/zsapdev_rap_sample/zsapdev_rap_sample_3dp)

---

### 3D Printer Management - Early Numbering (`zsapdev_rap_sample_3dp_en`)

**Pattern:** Managed with Early Numbering & Draft

**Key Features:**

- **NOTE: use only NUMC20 domains in your data element when using number ranges. BTP ABAP Environment has a critical bug, and number range validation works wrong otherwise!**
- Header with external Number Range Check
- Item numbering with calculated next free sequence number
- Parent-child relationship (3D Printer ↔ Nozzle)
- Admin data with user details
- Unit of Measure Value Help

**Components:**

- Behavior Implementations: `zbp_i_sapdev_3dprinter`, `zbp_i_sapdev_nozzle`
- Interface Views: `zi_sapdev_3dprinter`, `zi_sapdev_nozzle`
- Consumption Views: `zc_sapdev_3dprinter`, `zc_sapdev_nozzle`
- Database Tables: `zsapdev_3dp_d`
- Number Range Object: `z3dpen`
- **External** Number range interval defined in F4290 Fiori application
  ![1762621587731](image/README/1762621587731.png)
- OData V4 UI Service (`ZSAPDEV_3DP_EN_UI_O4`)

**Frontend:**

* Fiori Elements UI with ADT Preview

**Path:** [`/src/zsapdev_rap_sample/zsapdev_rap_sample_3dp_en`](/src/zsapdev_rap_sample/zsapdev_rap_sample_3dp_en)

---

### 3D Printer Management - No Draft (`zsapdev_rap_sample_3dp_nd`)

**Pattern:** Managed, Managed UUID Key, Draft

**Key Features:**

- managed UUID keys
- UUID converted to string to prevent Edm.Guid conversion by Gateway (`bintohex(entity_key) as EntityKeyChar`) to support data validation
- for OData v2 consumption
- Parent-child relationship (3D Printer ↔ Nozzle)
- Admin data with user details
- Unit of Measure Value Help

**Components:**

- OData V2 UI Service (`ZSAPDEV_3DP_UI_O2`)

**Frontend:**

* Fiori Elements UI with ADT Preview

**Path:** [`/src/zsapdev_rap_sample/zsapdev_rap_sample_3dp_nd`](/src/zsapdev_rap_sample/zsapdev_rap_sample_3dp_nd)

---

### RAP Extensibility Enablement (`zsapdev_rap_sample_sap_bo`)

Demonstrates syntax and data modeling approach to enable extensibility of DB, CDS, RAP Behavior and Service, so covering all the layers.

**Pattern:** Managed, Managed UUID Key, Draft

**Key Features:**

* Based on SAP RAP630 course materials
* DB

  ```
  ...
  @EndUserText.label : ' Web Order'
  @AbapCatalog.enhancement.category : #EXTENSIBLE_ANY
  define table zsapdev_ashop {
  ...
  ```
* CDS: R/I/C

  ```
  ...
  @AbapCatalog.extensibility: {
    extensible: true, 
    elementSuffix: 'ZAA', 
    allowNewDatasources: false, 
    allowNewCompositions: true, 
    dataSources: [ '_Extension' ], 
    quota: {
      maximumFields: 100 , 
      maximumBytes: 10000 
    }
  }
  define root view entity...
  ```
* Behavior

  ```
  managed;
  strict ( 2 );
  with draft;
  extensible
  {
    with additional save;
    with determinations on modify;
    with determinations on save;
    with validations on save;
  }
  define behavior for ZR_ShopTP_B alias Shop
  implementation in class ZBP_R_ShopTP_B unique
  persistent table ZSAPDEV_ASHOP
  extensible
  ....
  draft determine action Prepare extensible;
  ...
  mapping for ZSAPDEV_ASHOP corresponding extensible {
  ...
  }
  ...
  ```
* Servive definition
  `@AbapCatalog.extensibility.extensible: true`

**Path:** [`/src/zsapdev_rap_sample/zsapdev_rap_sample_sap_bo`](/src/zsapdev_rap_sample/zsapdev_rap_sample_sap_bo)

### RAP Developer Extensibility Provider (`zsapdev_rap_sample_sap_ext`)

**Pattern:** Developer Extensibility

**Key Features:**

- Based on SAP RAP630 course materials
- Custom field extensions
- Enhanced business logic
- Additional UI enhancements

**Path:** [`/src/zsapdev_rap_sample/zsapdev_rap_sample_sap_ext`](/src/zsapdev_rap_sample/zsapdev_rap_sample_sap_ext)

![3D Printer UI](https://file+.vscode-resource.vscode-cdn.net/d%3A/Workspaces/GitHub/attilaberencsi/zsapdev_agit/image/README/1760284314001.png)

---

### Side-by-Side Extension (`zsapdev_rap_sample_side_by_s4`)

**Pattern:** Side-by-Side Extension with S/4HANA Cloud

⚠️ **Available only in `cloud` branch**

**Key Features:**

- Based on SAP RAP620 course materials
- Extension of S/4HANA Public Cloud on separate BTP ABAP Environment
- Service Consumption Model integration
- Communication Arrangement configuration required
- Cloud-to-Cloud integration pattern

**Prerequisites:**

- BTP ABAP Environment system
- Communication arrangement with S/4HANA Cloud
- Appropriate authorizations

**Path:** [`/src/zsapdev_rap_sample/zsapdev_rap_sample_side_by_s4`](/src/zsapdev_rap_sample/zsapdev_rap_sample_side_by_s4)

**Architecture:**

![Side-by-Side Extension](image/README/SBS_S4.png)

---

### Exchange Rate Sample (`zsapdev_rap_sample_exrate`)

**Pattern:** External API Integration

**Path:** [`/src/zsapdev_rap_sample/zsapdev_rap_sample_exrate`](/src/zsapdev_rap_sample/zsapdev_rap_sample_exrate)

---

---

### Code Generation Sample (`zsapdev_rap_sample_codegen`)

**Pattern:** BAS-RAP UI Service Generation #UI_PROVIDER_PROJECTION_SOURCE

**Path:** [`/src/zsapdev_rap_sample/zsapdev_rap_sample_codegen`](/src/zsapdev_rap_sample/zsapdev_rap_sample_codegen)

---

## Branch Information

This repository maintains multiple branches for different deployment scenarios:

| Branch          | Target System         | Description                                                                |
| --------------- | --------------------- | -------------------------------------------------------------------------- |
| `cloud`       | BTP ABAP Environment  | Cloud-optimized version with side-by-side extensions                       |
| `onPrem-2023` | On-Premise ABAP 7.56+ | On-premise version with full features including mandatory field validation |

**Current Branch:** `cloud`

---

## Getting Started

### Prerequisites

- ABAP Development Tools (ADT) in Eclipse
- SAP BTP ABAP Environment or SAP S/4HANA 2023+
- Basic knowledge of RAP and CDS views

### Installation

1. Clone the repository to your local system
2. Use abapGit to import the code into your ABAP system
3. Activate all objects in the following order:
   - Core utilities (`zsapdev_rap`)
   - Sample applications
