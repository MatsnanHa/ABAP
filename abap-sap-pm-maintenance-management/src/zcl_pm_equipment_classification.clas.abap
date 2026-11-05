CLASS zcl_pm_equipment_classification DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

ENDCLASS.

CLASS zcl_pm_equipment_classification IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    TYPES:
      BEGIN OF ty_equipment,
        equip_id   TYPE c LENGTH 10,
        equip_desc TYPE c LENGTH 40,
        status     TYPE c LENGTH 1,
      END OF ty_equipment.

    DATA lt_equipment TYPE STANDARD TABLE OF ty_equipment
      WITH EMPTY KEY.

    APPEND VALUE #(
      equip_id   = 'EQ00000001'
      equip_desc = 'Production Pump'
      status     = 'A'
    ) TO lt_equipment.

    APPEND VALUE #(
      equip_id   = 'EQ00000002'
      equip_desc = 'Conveyor Belt'
      status     = 'A'
    ) TO lt_equipment.

    APPEND VALUE #(
      equip_id   = 'EQ00000003'
      equip_desc = 'Air Compressor'
      status     = 'I'
    ) TO lt_equipment.

    LOOP AT lt_equipment INTO DATA(ls_equipment).

      DATA(lv_status_text) = COND string(
        WHEN ls_equipment-status = 'A' THEN 'Active'
        WHEN ls_equipment-status = 'I' THEN 'Inactive'
        ELSE 'Unknown'
      ).

      out->write(
        |{ ls_equipment-equip_id } - { ls_equipment-equip_desc } - { lv_status_text }|
      ).

    ENDLOOP.

  ENDMETHOD.

ENDCLASS.
