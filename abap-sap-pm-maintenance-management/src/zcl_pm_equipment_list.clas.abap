CLASS zcl_pm_equipment_list DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

ENDCLASS.

CLASS zcl_pm_equipment_list IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    TYPES:
      BEGIN OF ty_equipment,
        equip_id   TYPE c LENGTH 10,
        equip_desc TYPE c LENGTH 40,
        plant      TYPE c LENGTH 4,
      END OF ty_equipment.

    DATA lt_equipment TYPE STANDARD TABLE OF ty_equipment
      WITH EMPTY KEY.

    APPEND VALUE #(
      equip_id   = 'EQ00000001'
      equip_desc = 'Production Pump'
      plant      = '1000'
    ) TO lt_equipment.

    APPEND VALUE #(
      equip_id   = 'EQ00000002'
      equip_desc = 'Conveyor Belt'
      plant      = '1000'
    ) TO lt_equipment.

    APPEND VALUE #(
      equip_id   = 'EQ00000003'
      equip_desc = 'Air Compressor'
      plant      = '2000'
    ) TO lt_equipment.

    out->write( 'EQUIPMENT LIST' ).
    out->write( '--------------' ).

    LOOP AT lt_equipment INTO DATA(ls_equipment).
      out->write(
        |{ ls_equipment-equip_id } - { ls_equipment-equip_desc } - Plant: { ls_equipment-plant }|
      ).
    ENDLOOP.

  ENDMETHOD.

ENDCLASS.
