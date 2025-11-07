# sapdev.eu - ABAP RAP Reuse Libraries, Utilities and Samples

## Overview

This repository contains reusable ABAP RAP (RESTful ABAP Programming) utilities, base classes, and comprehensive sample applications demonstrating various RAP patterns and scenarios.

## 📚 Table of Contents

- [Core Components](#core-components)
- [Sample Applications](#sample-applications)
- [Branch Information](#branch-information)
- [Getting Started](#getting-started)

---

## Core Components

### RAP Utilities (`/src/zsapdev_rap`)

A collection of reusable base classes and interfaces for managed RAP applications with draft handling.

**Features:**

- Managed draft handler base implementation
- Common behavior definitions
- Standardized error messaging (`zcm_sapdev_rap`)
- Base interface for managed operations (`zif_sapdev_rap_managed_base`)
- Base class implementation (`zcl_sapdev_rap_managed_base`)

**Status:**

- ✅ Draft handling: Available
- ⚠️ Mandatory field validation: In progress (available in `onPrem-2023` branch)

---

## Sample Applications

All sample applications are located under `/src/zsapdev_rap_sample/` and demonstrate different RAP patterns and scenarios.

### 1. 3D Printer Management - Early Numbering (`zsapdev_rap_sample_3dp_en`)

**Pattern:** Managed with Early Numbering & Draft

**Key Features:**

- Header with external Number Range Check
- Item numbering with calculated next free sequence number
- Draft enabled
- Parent-child relationship (3D Printer ↔ Nozzle)

**Components:**

- Behavior Implementations: `zbp_i_sapdev_3dprinter`, `zbp_i_sapdev_nozzle`
- Interface Views: `zi_sapdev_3dprinter`, `zi_sapdev_nozzle`
- Consumption Views: `zc_sapdev_3dprinter`, `zc_sapdev_nozzle`
- Database Tables: `zsapdev_3dp_d`
- Number Range Object: `z3dpen`

**Path:** [`/src/zsapdev_rap_sample/zsapdev_rap_sample_3dp_en`](/src/zsapdev_rap_sample/zsapdev_rap_sample_3dp_en)

---

### 2. 3D Printer Management - No Draft (`zsapdev_rap_sample_3dp_nd`)

**Pattern:** Managed without Draft

**Key Features:**

- Similar to 3dp_en but without draft functionality
- Direct database updates
- Simplified transactional handling

**Path:** [`/src/zsapdev_rap_sample/zsapdev_rap_sample_3dp_nd`](/src/zsapdev_rap_sample/zsapdev_rap_sample_3dp_nd)

---

### 3. 3D Printer Management - Standard (`zsapdev_rap_sample_3dp`)

**Pattern:** Managed with UUID & Draft

**Key Features:**

- Internal numbering with UUID
- Draft enabled
- OData V4 service
- Full CRUD operations

**Components:**

- Fiori Elements UI with metadata extensions
- OData V4  UI Service (`zsapdev_3dp_ui_o4`)
- Service bindings

**Path:** [`/src/zsapdev_rap_sample/zsapdev_rap_sample_3dp`](/src/zsapdev_rap_sample/zsapdev_rap_sample_3dp)

---

### 4. RAP Extensibility Enablement (`zsapdev_rap_sample_sap_bo`)

**Key Features:**

* Syntax to enable extensibility starting down from DB layer going upper

**Pattern:** Managed with UUID & Draft

**Path:** [`/src/zsapdev_rap_sample/zsapdev_rap_sample_sap_bo`](/src/zsapdev_rap_sample/zsapdev_rap_sample_sap_bo)

### 5. RAP Developer Extensibility (`zsapdev_rap_sample_sap_ext`)

**Pattern:** Developer Extensibility

**Key Features:**

- Based on SAP RAP630 course materials
- Custom field extensions
- Enhanced business logic
- Additional UI enhancements

**Path:** [`/src/zsapdev_rap_sample/zsapdev_rap_sample_sap_ext`](/src/zsapdev_rap_sample/zsapdev_rap_sample_sap_ext)

![3D Printer UI](https://file+.vscode-resource.vscode-cdn.net/d%3A/Workspaces/GitHub/attilaberencsi/zsapdev_agit/image/README/1760284314001.png)

---

### 6. Side-by-Side Extension (`zsapdev_rap_sample_side_by_s4`)

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

### 7. Exchange Rate Sample (`zsapdev_rap_sample_exrate`)

**Pattern:** External API Integration

**Path:** [`/src/zsapdev_rap_sample/zsapdev_rap_sample_exrate`](/src/zsapdev_rap_sample/zsapdev_rap_sample_exrate)

---

---

### 8. Code Generation Sample (`zsapdev_rap_sample_codegen`)

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
