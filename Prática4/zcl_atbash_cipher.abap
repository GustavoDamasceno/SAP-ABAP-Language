CLASS zcl_atbash_cipher DEFINITION PUBLIC FINAL CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS decode
      IMPORTING
        cipher_text TYPE string
      RETURNING
        VALUE(plain_text)  TYPE string .
    METHODS encode
      IMPORTING
        plain_text        TYPE string
      RETURNING
        VALUE(cipher_text) TYPE string .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_atbash_cipher IMPLEMENTATION.

  METHOD decode.
    DATA: aux type string.
    aux = cipher_text.

    TRANSLATE aux to lower case.
    TRANSLATE cipher_text to lower case.
    
    SEARCH aux FOR 'a'.
        IF sy-subrc = 0.
          REPLACE 'a' WITH 'z' INTO cipher_text.
        ENDIF.
    
    SEARCH aux FOR 'b'.
    IF sy-subrc = 0.
      REPLACE 'b' WITH 'y' INTO cipher_text.
    ENDIF.
    
    SEARCH aux FOR 'c'.
    IF sy-subrc = 0.
      REPLACE 'c' WITH 'x' INTO cipher_text.
    ENDIF.
    
    SEARCH aux FOR 'd'.
    IF sy-subrc = 0.
      REPLACE 'd' WITH 'w' INTO cipher_text.
    ENDIF.
    
    SEARCH aux FOR 'e'.
    IF sy-subrc = 0.
      REPLACE 'e' WITH 'v' INTO cipher_text.
    ENDIF.
    
    SEARCH aux FOR 'f'.
    IF sy-subrc = 0.
      REPLACE 'f' WITH 'u' INTO cipher_text.
    ENDIF.
    
    SEARCH aux FOR 'g'.
    IF sy-subrc = 0.
      REPLACE 'g' WITH 't' INTO cipher_text.
    ENDIF.
    
    SEARCH aux FOR 'h'.
    IF sy-subrc = 0.
      REPLACE 'h' WITH 's' INTO cipher_text.
    ENDIF.
    
    SEARCH aux FOR 'i'.
    IF sy-subrc = 0.
      REPLACE 'i' WITH 'r' INTO cipher_text.
    ENDIF.
    
    SEARCH aux FOR 'j'.
    IF sy-subrc = 0.
      REPLACE 'j' WITH 'q' INTO cipher_text.
    ENDIF.
    
    SEARCH aux FOR 'k'.
    IF sy-subrc = 0.
      REPLACE 'k' WITH 'p' INTO cipher_text.
    ENDIF.
    
    SEARCH aux FOR 'l'.
    IF sy-subrc = 0.
      REPLACE 'l' WITH 'o' INTO cipher_text.
    ENDIF.
    
    SEARCH aux FOR 'm'.
    IF sy-subrc = 0.
      REPLACE 'm' WITH 'n' INTO cipher_text.
    ENDIF.
    
    SEARCH aux FOR 'n'.
    IF sy-subrc = 0.
      REPLACE 'n' WITH 'm' INTO cipher_text.
    ENDIF.
    
    SEARCH aux FOR 'o'.
    IF sy-subrc = 0.
      REPLACE 'o' WITH 'l' INTO cipher_text.
    ENDIF.
    
    SEARCH aux FOR 'p'.
    IF sy-subrc = 0.
      REPLACE 'p' WITH 'k' INTO cipher_text.
    ENDIF.
    
    SEARCH aux FOR 'q'.
    IF sy-subrc = 0.
      REPLACE 'q' WITH 'j' INTO cipher_text.
    ENDIF.
    
    SEARCH aux FOR 'r'.
    IF sy-subrc = 0.
      REPLACE 'r' WITH 'i' INTO cipher_text.
    ENDIF.
    
    SEARCH aux FOR 's'.
    IF sy-subrc = 0.
      REPLACE 's' WITH 'h' INTO cipher_text.
    ENDIF.
    
    SEARCH aux FOR 't'.
    IF sy-subrc = 0.
      REPLACE 't' WITH 'g' INTO cipher_text.
    ENDIF.
    
    SEARCH aux FOR 'u'.
    IF sy-subrc = 0.
      REPLACE 'u' WITH 'f' INTO cipher_text.
    ENDIF.
    
    SEARCH aux FOR 'v'.
    IF sy-subrc = 0.
      REPLACE 'v' WITH 'e' INTO cipher_text.
    ENDIF.
    
    SEARCH aux FOR 'w'.
    IF sy-subrc = 0.
      REPLACE 'w' WITH 'd' INTO cipher_text.
    ENDIF.
    
    SEARCH aux FOR 'x'.
    IF sy-subrc = 0.
      REPLACE 'x' WITH 'c' INTO cipher_text.
    ENDIF.
    
    SEARCH aux FOR 'y'.
    IF sy-subrc = 0.
      REPLACE 'y' WITH 'b' INTO cipher_text.
    ENDIF.
    
    SEARCH aux FOR 'z'.
    IF sy-subrc = 0.
      REPLACE 'z' WITH 'a' INTO cipher_text.
    ENDIF.
  ENDMETHOD.

  METHOD encode.
    DATA: aux type string.
    aux = plain_text.

    TRANSLATE aux to lower case.
    TRANSLATE plain_text to lower case.
    
    SEARCH aux FOR 'z'.
        IF sy-subrc = 0.
          REPLACE 'z' WITH 'a' INTO plain_text.
        ENDIF.
    
    SEARCH aux FOR 'y'.
    IF sy-subrc = 0.
      REPLACE 'y' WITH 'b' INTO plain_text.
    ENDIF.
    
    SEARCH aux FOR 'x'.
    IF sy-subrc = 0.
      REPLACE 'x' WITH 'c' INTO plain_text.
    ENDIF.
    
    SEARCH aux FOR 'w'.
    IF sy-subrc = 0.
      REPLACE 'w' WITH 'd' INTO plain_text.
    ENDIF.
    
    SEARCH aux FOR 'v'.
    IF sy-subrc = 0.
      REPLACE 'v' WITH 'e' INTO plain_text.
    ENDIF.
    
    SEARCH aux FOR 'u'.
    IF sy-subrc = 0.
      REPLACE 'u' WITH 'f' INTO plain_text.
    ENDIF.
    
    SEARCH aux FOR 't'.
    IF sy-subrc = 0.
      REPLACE 't' WITH 'g' INTO plain_text.
    ENDIF.
    
    SEARCH aux FOR 's'.
    IF sy-subrc = 0.
      REPLACE 's' WITH 'h' INTO plain_text.
    ENDIF.
    
    SEARCH aux FOR 'r'.
    IF sy-subrc = 0.
      REPLACE 'r' WITH 'i' INTO plain_text.
    ENDIF.
    
    SEARCH aux FOR 'q'.
    IF sy-subrc = 0.
      REPLACE 'q' WITH 'j' INTO plain_text.
    ENDIF.
    
    SEARCH aux FOR 'p'.
    IF sy-subrc = 0.
      REPLACE 'p' WITH 'k' INTO plain_text.
    ENDIF.
    
    SEARCH aux FOR 'o'.
    IF sy-subrc = 0.
      REPLACE 'o' WITH 'l' INTO plain_text.
    ENDIF.
    
    SEARCH aux FOR 'n'.
    IF sy-subrc = 0.
      REPLACE 'n' WITH 'm' INTO plain_text.
    ENDIF.
    
    SEARCH aux FOR 'm'.
    IF sy-subrc = 0.
      REPLACE 'm' WITH 'n' INTO plain_text.
    ENDIF.
    
    SEARCH aux FOR 'l'.
    IF sy-subrc = 0.
      REPLACE 'l' WITH 'o' INTO plain_text.
    ENDIF.
    
    SEARCH aux FOR 'k'.
    IF sy-subrc = 0.
      REPLACE 'k' WITH 'p' INTO plain_text.
    ENDIF.
    
    SEARCH aux FOR 'j'.
    IF sy-subrc = 0.
      REPLACE 'j' WITH 'q' INTO plain_text.
    ENDIF.
    
    SEARCH aux FOR 'i'.
    IF sy-subrc = 0.
      REPLACE 'i' WITH 'r' INTO plain_text.
    ENDIF.
    
    SEARCH aux FOR 'h'.
    IF sy-subrc = 0.
      REPLACE 'h' WITH 's' INTO plain_text.
    ENDIF.
    
    SEARCH aux FOR 'g'.
    IF sy-subrc = 0.
      REPLACE 'g' WITH 't' INTO plain_text.
    ENDIF.
    
    SEARCH aux FOR 'f'.
    IF sy-subrc = 0.
      REPLACE 'f' WITH 'u' INTO plain_text.
    ENDIF.
    
    SEARCH aux FOR 'e'.
    IF sy-subrc = 0.
      REPLACE 'e' WITH 'v' INTO plain_text.
    ENDIF.
    
    SEARCH aux FOR 'd'.
    IF sy-subrc = 0.
      REPLACE 'd' WITH 'w' INTO plain_text.
    ENDIF.
    
    SEARCH aux FOR 'c'.
    IF sy-subrc = 0.
      REPLACE 'c' WITH 'x' INTO plain_text.
    ENDIF.
    
    SEARCH aux FOR 'b'.
    IF sy-subrc = 0.
      REPLACE 'b' WITH 'y' INTO plain_text.
    ENDIF.
    
    SEARCH aux FOR 'a'.
    IF sy-subrc = 0.
      REPLACE 'a' WITH 'z' INTO plain_text.
    ENDIF.

    cipher_text = plain_text.
  ENDMETHOD.
ENDCLASS.
