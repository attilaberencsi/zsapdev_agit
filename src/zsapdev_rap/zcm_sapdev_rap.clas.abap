CLASS zcm_sapdev_rap DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_abap_behv_message.
    INTERFACES if_t100_message.
    INTERFACES if_t100_dyn_msg.

    METHODS constructor
      IMPORTING textid     LIKE if_t100_message=>t100key         OPTIONAL
                severity   TYPE if_abap_behv_message=>t_severity DEFAULT if_abap_behv_message=>severity-error
                !previous  LIKE previous                         OPTIONAL
                field_name TYPE symsgv                           OPTIONAL.

    DATA field_name TYPE symsgv.

    CONSTANTS:
      BEGIN OF mandatory_field,
        msgid TYPE symsgid      VALUE 'ZSAPDEV_RAP',
        msgno TYPE symsgno      VALUE '001',
        attr1 TYPE scx_attrname VALUE 'FIELD_NAME',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF mandatory_field,

      BEGIN OF mandatory_field_no_label,
        msgid TYPE symsgid      VALUE 'ZSAPDEV_RAP',
        msgno TYPE symsgno      VALUE '002',
        attr1 TYPE scx_attrname VALUE '',
        attr2 TYPE scx_attrname VALUE '',
        attr3 TYPE scx_attrname VALUE '',
        attr4 TYPE scx_attrname VALUE '',
      END OF mandatory_field_no_label.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCM_SAPDEV_RAP IMPLEMENTATION.


  METHOD constructor ##ADT_SUPPRESS_GENERATION.
    super->constructor( previous = previous ).
    CLEAR me->textid.

    me->field_name = field_name.

    IF textid IS INITIAL.
      if_t100_message~t100key = if_t100_message=>default_textid.
    ELSE.
      if_t100_message~t100key = textid.
    ENDIF.

    if_abap_behv_message~m_severity = severity.
  ENDMETHOD.
ENDCLASS.
