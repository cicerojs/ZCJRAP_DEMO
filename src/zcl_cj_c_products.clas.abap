CLASS zcl_cj_c_products DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_cj_c_products IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    TYPES: tt_products TYPE TABLE OF zcjrap_product WITH DEFAULT KEY.

    DELETE FROM zcjrap_product.

    DATA(lt_products) = VALUE tt_products(
        ( matnr = '1' description = 'Celular'    language = 'P' )
        ( matnr = '2' description = 'Televisão'  language = 'P' )
        ( matnr = '3' description = 'Computador' language = 'P' )
        ( matnr = '1' description = 'Cellphone'  language = 'E' )
        ( matnr = '2' description = 'Television' language = 'E' )
        ( matnr = '3' description = 'Computer'   language = 'E' )
    ).

    MODIFY zcjrap_product FROM TABLE @lt_products.

    IF sy-subrc = 0.
      out->write( 'Produtos inseridos com sucesso!' ).
    ELSE.
      out->write( 'Erro ao inserir produtos!' ).
    ENDIF.

  ENDMETHOD.

ENDCLASS.
