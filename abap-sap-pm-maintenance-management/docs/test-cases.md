# Test Cases — Initial ABAP Examples

## 1. Test approach

The source files in this repository are illustrative ABAP class examples. They have not yet been activated or executed in an SAP ABAP environment. The cases below define expected behaviour and must be recorded as passed only after actual execution.

## 2. Equipment list example

| Test ID | Scenario | Input | Expected result |
|---|---|---|---|
| TC-01 | Display first equipment | EQ00000001 / Production Pump / 1000 | Equipment values are displayed |
| TC-02 | Display multiple records | Three sample equipment rows | Three rows are displayed |
| TC-03 | Preserve plant value | Plant 2000 on third row | Third row displays plant 2000 |

## 3. Equipment classification example

| Test ID | Scenario | Input status | Expected result |
|---|---|---|---|
| TC-04 | Active equipment | A | Displays Active |
| TC-05 | Inactive equipment | I | Displays Inactive |
| TC-06 | Invalid status | X | Future implementation should handle as invalid; current simple example may classify it as inactive |

## 4. Execution record

| Item | Current result |
|---|---|
| ABAP activation | Not performed — no SAP environment available |
| Runtime execution | Not performed |
| Actual output evidence | Not available |
| Test status | Not executed |

Do not mark a test as passed until it has been run in an SAP environment and the observed result has been recorded.
