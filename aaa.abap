CLASS my_class DEFINITION.

  PUBLIC SESSION.
    METHODS: constructor IMPORTING cstring TYPE string.
    METHODS: set_string IMPORTING string_to_set TYPE string.
    
  PROTECTED SESSION.
  
  PRIVATE SESSION.
    DATA: str TYPE string.
    
ENDCLASS.

CLASS my_class IMPLEMENTATION.

  METHOD  constructor.
    me->set_string(cstring).
  ENDMETHOD.

  METHOD set_string.
    me->str = string_to_set.
  ENDMETHOD.
  
ENDCLASS.

START_OF_SELECTION.
 
  TRY.
    DATA(diogo) = NEW my_class("string").
  CATCH cx_root.
    
  ENDTRY.

END-OF-SELECTION.
