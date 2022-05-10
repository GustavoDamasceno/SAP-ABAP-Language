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
    CONSTANTS: abc TYPE string VALUE 'abcdefghijklmnopqrstuvwxyz'.
    METHODS encode_character
      IMPORTING
        enc_char TYPE c
      RETURNING
        VALUE(result) TYPE c.
ENDCLASS.
CLASS zcl_atbash_cipher IMPLEMENTATION.
  METHOD decode.
    plain_text = replace( val = encode( cipher_text ) sub  = ` ` with = `` occ  = 0 ).
  ENDMETHOD.
  METHOD encode_character.
    DATA(offset) = find( val = abc sub = enc_char ).
    IF offset >= 0.
      result = substring( val = reverse( abc ) len = 1 off = offset ).
    ELSE.
      result = enc_char.
    ENDIF.
  ENDMETHOD.
  METHOD encode.
    DATA(enc_text) = replace( val = to_lower( plain_text ) regex = '[^a-z0-9]' with  = `` occ   = 0 ).
    cipher_text = REDUCE #(
      INIT s = ||
      FOR i = 0 WHILE i < strlen( enc_text )
      NEXT s = COND #( WHEN i MOD 5 = 0 AND i > 0
                       THEN |{ s } { encode_character( substring( val = enc_text off = i len = 1 ) ) }|
                       ELSE |{ s }{ encode_character( substring( val = enc_text off = i len = 1 ) ) }| ) ).
  ENDMETHOD.
ENDCLASS.
