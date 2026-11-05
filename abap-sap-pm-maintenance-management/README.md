# SAP PM Maintenance Management — ABAP Learning Portfolio

**Project type:** Personal learning project  
**Level:** Beginner  
**Status:** Initial portfolio version — source code and design prepared; SAP execution not yet verified.

## Overview

This repository documents a beginner-level learning project that models selected Plant Maintenance (PM) business processes using custom ABAP examples.

The proposed scenario covers equipment records, maintenance notifications, maintenance orders, and maintenance operations. The current version focuses on ABAP fundamentals and a transparent database design proposal.

> **Important scope note:** This is an independent learning project. It is not an official SAP implementation, does not modify SAP standard tables, and has not yet been executed or tested in an SAP system. The source files are learning examples intended for review and subsequent validation in an ABAP development environment.

## Business scenario

A manufacturing company needs a consistent way to record equipment information and follow maintenance activities. Operators report equipment problems, maintenance planners review notifications, and maintenance teams perform work recorded against maintenance orders.

This project uses that scenario to practise ABAP programming concepts while learning how maintenance processes relate to SAP PM.

## Learning objectives

- Understand ABAP declarations, elementary types, structures, and internal tables.
- Practise `IF`, `CASE`, and `LOOP` statements.
- Understand the role of ABAP Dictionary and Open SQL.
- Model basic equipment, notification, order, and operation relationships.
- Prepare a foundation for later ALV reporting and database-backed functionality.

## Planned scope

| Area | Planned capability | Current status |
|---|---|---|
| Equipment | Maintain basic equipment records | Design prepared; sample in-memory code provided |
| Notification | Record reported problems | Data design only |
| Maintenance order | Track planned maintenance work | Data design only |
| Operations | Record work steps and duration | Data design only |
| Reporting | Display maintenance data | Planned |
| Database persistence | Store and retrieve records using ABAP SQL | Not implemented |

## Repository structure

```text
.
├── README.md
├── docs/
│   ├── business-requirements.md
│   ├── functional-specification.md
│   ├── database-design.md
│   └── test-cases.md
├── src/
│   ├── zcl_pm_hello_equipment.clas.abap
│   ├── zcl_pm_equipment_list.clas.abap
│   └── zcl_pm_equipment_classification.clas.abap
└── tests/
    └── manual-test-record.md
```

## Technology and environment

The examples are written in an ABAP Objects style intended for an ABAP Development Tools (ADT) environment. The console examples use `IF_OO_ADT_CLASSRUN`.

No SAP system connection is included in this repository. Compatibility must be checked in the target ABAP release. In particular, the proposed table design is conceptual until implemented and activated in an ABAP Dictionary environment.

## How to review the source

1. Review the business scenario and functional scope in `docs/`.
2. Read the ABAP class examples in `src/`.
3. Check the expected results and limitations in `docs/test-cases.md`.
4. When an ABAP environment becomes available, create the classes in ADT, activate them, run them, and record actual test evidence.

The `.clas.abap` files contain class source examples. They are not standalone programs that can be executed with a local Windows command prompt.

## Current limitations

- No SAP BTP ABAP Environment or SAP application server was available during preparation.
- Source code has not been activated or executed in SAP.
- No persistent database tables, CRUD transactions, ALV report, or user interface have been implemented.
- The table names beginning with `ZPM_` are proposed custom names, not existing SAP standard objects.
- Referential integrity, authorisations, number-range handling, and production-grade error handling remain future work.

## Next development steps

1. Set up an SAP ABAP development environment.
2. Create and activate the console classes.
3. Implement custom table definitions in ABAP Dictionary.
4. Add validated database operations using ABAP SQL.
5. Implement notification and order processing.
6. Add reporting and test evidence.

## Project classification

**Personal ABAP learning portfolio.** All examples and designs are for educational purposes and should not be represented as professional SAP implementation experience.
