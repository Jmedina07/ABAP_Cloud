CLASS zcl_jmj_add_art DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_jmj_add_art IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.


  DATA: lt_tab_art TYPE STANDARD TABLE OF zjmj_tab_art.

  lt_tab_art = VALUE #(
    ( client = sy-mandt id_art = 1 descr = 'Minicolores' descr2 = 'Minicolor estuche' color = 'Varios'
      piezas = 12 stock = 10 url = '' )
    ( client = sy-mandt id_art = 2 descr = 'Libreta' descr2 = 'Libreta Profesional' color = 'Negra'
      piezas = 1 stock = 15 url = '' )
    ( client = sy-mandt id_art = 3 descr = 'Lapiz' descr2 = 'Lapiz' color = 'Rojo'
      piezas = 1 stock = 10 url = '' )
  ).

  DELETE FROM zjmj_tab_art.
  INSERT zjmj_tab_art FROM TABLE @lt_tab_art.
  if sy-subrc EQ 0.
    out->write( 'Se insertó bien' ).
  else.

  out->write( 'Se insertó Mal' ).

  endif.

  ENDMETHOD.
ENDCLASS.
