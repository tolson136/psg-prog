DEF VAR YO-MAMA AS LOGICAL
    LABEL "DO YOU REALLY WANT TO PROCEED WITH THE TRANSFERRING OF INVOICES ?".
DEFINE SHARED VARIABLE XCOM AS INTEGER FORMAT "ZZ".
DEFINE SHARED VARIABLE XDIV AS INTEGER FORMAT "ZZ".
DEFINE VAR H-COMMIS AS DECIMAL FORMAT "$>>>,>>>.99".
DEFINE VAR H-SUBCON AS DECIMAL FORMAT "$>>>,>>>.99".
DEF SHARED VAR XOPR AS CHAR FORMAT "XXX".
DEF VAR PDATE AS DATE FORMAT "99/99/9999".
DEFINE VARIABLE MN AS CHAR FORMAT "XX".
DEFINE VARIABLE YR AS CHAR FORMAT "XXXX".
DEFINE VARIABLE MNN AS INTEGER FORMAT "99".
DEFINE VARIABLE YRN AS INTEGER FORMAT "9999".
IF (USERID = "OPERATIONS") OR (USERID = "LANDMARK") OR (USERID = "GARCIA")
THEN DO:
    MESSAGE "YOU ARE NOT AUTHORIZED TO RUN THIS PROCEDURE".
    RETURN.
END.
YO-MAMA = no.
UPDATE YO-MAMA.
IF YO-MAMA THEN DO:
   FOR EACH INVOICE WHERE INVOICE.COMP# = XCOM AND INVOICE.DIV# = XDIV AND
                          invoice.sub# = 0 and invoice.route# > 0 and
                          INVOICE.I-TYPE = "N":
   FIND FIRST ACCT-RCV WHERE ACCT-RCV.COMP# = INVOICE.COMP# AND
                       ACCT-RCV.DIV# = INVOICE.DIV# AND
                       ACCT-RCV.CUST# = INVOICE.CUST# AND
                       ACCT-RCV.C-STATUS <> "I" NO-ERROR.
   IF AVAILABLE ACCT-RCV THEN DO:
       ACCT-RCV.BAL-1 = ACCT-RCV.BAL-1 + INVOICE.TOT-INV.
       ACCT-RCV.TOT-BAL = ACCT-RCV.TOT-BAL + INVOICE.TOT-INV.
       ACCT-RCV.SLS-YTD = ACCT-RCV.SLS-YTD + INVOICE.TOT-INV.
       ACCT-RCV.LST-DATE = INVOICE.I-DATE.
       ACCT-RCV.COST-YTD = ACCT-RCV.COST-YTD + INVOICE.PRICE.
       RELEASE ACCT-RCV.
   END.
   ELSE NEXT.
   FIND FIRST PRO-DESP WHERE PRO-DESP.COMP# = INVOICE.COMP# AND
                             PRO-DESP.DIV# = INVOICE.DIV# AND
                             PRO-DESP.CUST# = INVOICE.CUST# AND
                             PRO-DESP.PROPSL# = INVOICE.PROPSL# AND
                             PRO-DESP.ITEM# = INVOICE.ITEM# NO-ERROR.
   IF NOT AVAILABLE PRO-DESP THEN DO:
       H-COMMIS = 0.0.
       H-SUBCON = 0.0.
   END.
   IF AVAILABLE PRO-DESP THEN DO:
       H-COMMIS = PRO-DESP.COMMIS.
       H-SUBCON = PRO-DESP.SUB-CON.
   END.
   INVOICE.I-TYPE = "T".
         FIND FIRST TRANFILE WHERE TRANFILE.COMP# = INVOICE.COMP# AND
                                   TRANFILE.DIV# = INVOICE.DIV# AND
                                   TRANFILE.CUST# = INVOICE.CUST# AND
                                   TRANFILE.T-TYPE = "A" AND
                                   TRANFILE.INV-NO = INVOICE.INV-NO NO-ERROR.
         IF NOT AVAILABLE TRANFILE THEN DO:
         CREATE TRANFILE.
         TRANFILE.AGE = "1".
         TRANFILE.CHECK# = "".
         TRANFILE.COMP# = INVOICE.COMP#.
         TRANFILE.CUST# = INVOICE.CUST#.
         TRANFILE.DIV# = INVOICE.DIV#.
         TRANFILE.INV-NO = INVOICE.INV-NO.
         UPDATE MNN = MONTH(INVOICE.I-DATE).
         UPDATE YRN = YEAR(INVOICE.I-DATE).
         MN = STRING(MNN,"99").
         YR = STRING(YRN,"9999").
         UPDATE TRANFILE.PERIOD = STRING(MN + YR,"XXXXXX").
         TRANFILE.REC# = 0.
         TRANFILE.REFER = "TICKET".
         TRANFILE.SLS# = INVOICE.SLS#.
         TRANFILE.T-AMT = INVOICE.TOT-INV.
         TRANFILE.T-DATE = INVOICE.I-DATE.
         TRANFILE.T-OPR = XOPR.
         TRANFILE.T-TYPE = "A".
         TRANFILE.TR-STAT = "A".
         TRANFILE.COMMIS = H-COMMIS.
         TRANFILE.SUB-CON = H-SUBCON.
         RELEASE TRANFILE.
         END.
         ELSE DO:
           TRANFILE.T-AMT = TRANFILE.T-AMT + INVOICE.TOT-INV.
           TRANFILE.COMMIS = TRANFILE.COMMIS + H-COMMIS.
           TRANFILE.SUB-CON = TRANFILE.SUB-CON + H-SUBCON.
           RELEASE TRANFILE.
         END.
END.
END.