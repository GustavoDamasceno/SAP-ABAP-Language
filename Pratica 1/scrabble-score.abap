CLASS zcl_scrabble_score DEFINITION PUBLIC .
  PUBLIC SECTION.
    METHODS score
      IMPORTING
        receba         TYPE string OPTIONAL
      RETURNING
        VALUE(result) TYPE i.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_scrabble_score IMPLEMENTATION.
  METHOD score.
      data(vcont) = 0. 
      receba = TO_UPPER( receba ).
      result = 0.
      do strlen( receba ) times.
       case receba+vcont(1).
          when 'A' or 'E' or 'I' or 'O' or 'U' or 'L' or 'N' or 'R' or 'S' or 'T'.
            result = result + 1.
          when 'D' or 'G'.
            result = result + 2.
          when 'B' or 'C' or 'M' or 'P'.
            result = result + 3.
          when 'F' or 'H' or 'V' or 'W' or 'Y'.
            result = result + 4.
          when 'K'.
            result = result + 5.
          when 'J' or 'X'.
            result = result + 8.
          when 'Q' or 'Z'.
            result = result + 10.
          when others.
       endcase.
       add 1 to vcont.
      enddo.
  ENDMETHOD.
ENDCLASS.
