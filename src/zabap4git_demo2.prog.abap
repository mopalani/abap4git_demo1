*&---------------------------------------------------------------------*
*& Report ZABAP4GIT_DEMO2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zabap4git_demo2.

DATA gt_customer TYPE TABLE OF zcustomer.
DATA gs_customer TYPE zcustomer.

START-OF-SELECTION.
  CLEAR gt_customer.
  SELECT * FROM zcustomer INTO TABLE gt_customer.

END-OF-SELECTION.
  LOOP AT gt_customer INTO gs_customer.
    WRITE / gs_customer-fname.
  ENDLOOP.
