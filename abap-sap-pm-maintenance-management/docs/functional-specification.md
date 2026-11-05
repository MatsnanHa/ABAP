# Functional Specification — Initial Learning Scope

## 1. Document purpose

Describe the proposed behaviour of the beginner ABAP learning project. Functions marked as planned have not yet been implemented.

## 2. Functional requirements

| ID | Requirement | Priority | Status |
|---|---|---|---|
| FR-01 | Define an equipment data structure | High | Example source prepared |
| FR-02 | Store multiple equipment records in an internal table | High | Example source prepared |
| FR-03 | Display equipment records | High | Example source prepared |
| FR-04 | Classify equipment as active or inactive | Medium | Example source prepared |
| FR-05 | Persist equipment records in a custom database table | High | Planned |
| FR-06 | Create maintenance notifications | High | Planned |
| FR-07 | Create maintenance orders linked to equipment | High | Planned |
| FR-08 | Record operations for each order | Medium | Planned |
| FR-09 | Report maintenance orders | Medium | Planned |

## 3. Data validation rules — proposed

- Equipment ID must be unique and must not be blank.
- Equipment status must use an agreed value, initially `A` (Active) or `I` (Inactive).
- A notification must refer to an existing equipment record.
- An order must refer to an existing equipment record.
- An operation must refer to an existing order.
- Planned end date should not be earlier than planned start date.

These rules are requirements for future implementation, not validations already enforced by the sample code.

## 4. Simplified status model

### Equipment

| Code | Meaning |
|---|---|
| A | Active |
| I | Inactive |

### Notification

| Code | Meaning |
|---|---|
| O | Open |
| P | Processing |
| C | Closed |

### Maintenance order

| Code | Meaning |
|---|---|
| C | Created |
| R | Released |
| P | In Progress |
| T | Technically Completed |

The codes are project-specific simplifications. They should not be assumed to match all SAP standard status management values.

## 5. User interaction

The initial source examples run as ADT console classes. A selection screen, SAP GUI transaction, Fiori application, and ALV interface are not part of this version.
