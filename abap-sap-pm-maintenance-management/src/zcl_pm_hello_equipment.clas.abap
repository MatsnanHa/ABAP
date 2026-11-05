CLASS zcl_pm_hello_equipment DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

ENDCLASS.

CLASS zcl_pm_hello_equipment IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA lv_equip_id   TYPE c LENGTH 10.
    DATA lv_equip_desc TYPE c LENGTH 40.
    DATA lv_plant      TYPE c LENGTH 4.

    lv_equip_id   = 'EQ00000001'.
    lv_equip_desc = 'Production Pump'.
    lv_plant      = '1000'.

    out->write( 'EQUIPMENT INFORMATION' ).
    out->write( '---------------------' ).
    out->write( |Equipment ID : { lv_equip_id }| ).
    out->write( |Description  : { lv_equip_desc }| ).
    out->write( |Plant        : { lv_plant }| ).

  ENDMETHOD.

ENDCLASS.
