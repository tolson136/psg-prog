DEFINE VARIABLE NOTHING AS CHAR FORMAT "X(80)".
DEFINE VARIABLE ANS AS LOGICAL LABEL "DO YOU WISH TO LOOK AT MORE? ".
DEFINE SHARED VARIABLE XOPR AS CHAR FORMAT "XXX".
DEFINE SHARED VARIABLE XCOM AS INTEGER FORMAT "ZZ".
DEFINE SHARED VARIABLE XDIV AS INTEGER FORMAT "ZZ".
DEFINE VARIABLE XCST AS DECIMAL FORMAT "ZZZZZZZZZZ".
DEFINE VARIABLE XCST-N AS CHAR FORMAT "X(25)".
DEFINE SHARED VARIABLE XCOM-N AS CHAR FORMAT "X(30)".
DEFINE SHARED VARIABLE XDIV-N AS CHAR FORMAT "X(30)".
DEFINE VARIABLE X AS CHAR FORMAT "X".
UPDATE NOTHING =
"                                                                                ".
ANS = yes.
REPEAT:
DISPLAY
" A/R                      I N Q U I R Y                        DATE:" TODAY
FORMAT "99/99/9999" SKIP(0)
	XCOM LABEL "COMPANY NUMBER" SPACE(18)
	XDIV LABEL "DIVISION NUMBER" SKIP(0)
	XCOM-N LABEL "CMP" SPACE(1)
	XDIV-N LABEL "DIV" SPACE(1)
	XOPR LABEL "OPR" SKIP(0)
"================================================================================"
SKIP(0) WITH FRAME A SIDE-LABELS NO-BOX.
    CLEAR FRAME B.
    CLEAR FRAME C.
    PUT SCREEN ROW 17 COLUMN 1 NOTHING.
    PUT SCREEN ROW 18 COLUMN 1 NOTHING.
    PUT SCREEN ROW 19 COLUMN 1 NOTHING.
    PUT SCREEN ROW 20 COLUMN 1 NOTHING.
    PUT SCREEN ROW 21 COLUMN 1 NOTHING.
    PUT SCREEN ROW 22 COLUMN 1 NOTHING.
    PROMPT-FOR ACCT-RCV.CUST# LABEL "CUST #" WITH FRAME B.
    XCST = INPUT ACCT-RCV.CUST#.
    FIND ACCT-RCV WHERE ACCT-RCV.CUST# = XCST AND
			ACCT-RCV.COMP# = XCOM AND
			ACCT-RCV.DIV# = XDIV.
    IF LASTKEY = KEYCODE("F4") THEN LEAVE.
    DISPLAY
	    ACCT-RCV.CUST# LABEL "CUST #"
	    ACCT-RCV.C-NAME LABEL "CUSTOMER NAME"
	    ACCT-RCV.SLS#
	    ACCT-RCV.STATE LABEL "STATE"
	    ACCT-RCV.CNTY-CD LABEL "CNTY"
	    ACCT-RCV.CITY-CD LABEL "CITY"
	    ACCT-RCV.SRVC-CHG LABEL "SV-CHG"
	    ACCT-RCV.C-TYPE LABEL "TYPE"
	    ACCT-RCV.STMT-CD LABEL "STMT"
	    WITH FRAME B NO-UNDERLINE NO-BOX NO-HIDE.
    DISPLAY
	    ACCT-RCV.ADDR-1 LABEL "A1"
	    ACCT-RCV.BAL-1 LABEL "P 1" FORMAT "$-ZZZ,ZZZ,ZZZ.99" SPACE(3)
	    ACCT-RCV.SRVC-YTD LABEL "SV YTD" FORMAT "$-ZZZ,ZZZ,ZZZ.99" SKIP(0)
	    ACCT-RCV.ADDR-2 LABEL "A2"
	    ACCT-RCV.BAL-2 LABEL "P 2" FORMAT "$-ZZZ,ZZZ,ZZZ.99" SPACE(3)
	    ACCT-RCV.SLS-YTD LABEL  "SL YTD" FORMAT "$-ZZZ,ZZZ,ZZZ.99" SKIP(0)
	    ACCT-RCV.ADDR-3 LABEL "A3"
	    ACCT-RCV.BAL-3 LABEL "P 3" FORMAT "$-ZZZ,ZZZ,ZZZ.99" SPACE(3)
	    ACCT-RCV.COST-YTD LABEL "CS YTD" FORMAT "$-ZZZ,ZZZ,ZZZ.99" SKIP(0)
	    ACCT-RCV.ADDR-4 LABEL "A4"
	    ACCT-RCV.BAL-4 LABEL "P 4" FORMAT "$-ZZZ,ZZZ,ZZZ.99" SPACE(3)
	    ACCT-RCV.SLS-LAST LABEL "S LYTD" FORMAT "$-ZZZ,ZZZ,ZZZ.99" SKIP(0)
	    ACCT-RCV.ADDR-5 LABEL "A5"
	    ACCT-RCV.FUTR-DUE LABEL "FUT" FORMAT "$-ZZZ,ZZZ,ZZZ.99" SPACE(3)
	    ACCT-RCV.CST-LAST LABEL "C LYTD" FORMAT "$-ZZZ,ZZZ,ZZZ.99" SKIP(0)
	    ACCT-RCV.ZIP LABEL "ZP" SPACE(16)
	    ACCT-RCV.SRVC-DUE LABEL "SVC" FORMAT "$-ZZZ,ZZZ,ZZZ.99" SPACE(3)
	    ACCT-RCV.EXP-DATE LABEL "EXP DT" SKIP(0)
	    ACCT-RCV.COMMENTS LABEL "CM" SPACE(16)
	    ACCT-RCV.TOT-BAL LABEL "BAL" FORMAT "$-ZZZ,ZZZ,ZZZ.99" SPACE(3)
	    ACCT-RCV.LP-DATE LABEL "PAY DT" SKIP(0)
	    ACCT-RCV.TELE LABEL "PH" SPACE(12)
	    ACCT-RCV.OPEN-DT LABEL "OPN" SPACE(9)
	    ACCT-RCV.LST-DATE LABEL "SLS DT" SKIP(0)
	    WITH FRAME C SIDE-LABELS NO-BOX NO-HIDE.
DISPLAY
"   DATE    INV / STATUS  TYP     AMT        DATE    INV / STATUS  TYP     AMT   "
	    WITH FRAME D SIDE-LABELS NO-BOX NO-HIDE.
	    X = "Y".
REPEAT:
	   IF X = "Y"
	   THEN DO:
	   FIND FIRST TRANFILE WHERE TRANFILE.COMP# = XCOM AND
				     TRANFILE.DIV# = XDIV AND
				     TRANFILE.CUST# = XCST
				     USE-INDEX T-DATE NO-ERROR.
	   IF NOT AVAILABLE TRANFILE THEN LEAVE.
	   PUT SCREEN ROW 17 COLUMN 1 STRING(TRANFILE.T-DATE,"99/99/9999").
	   PUT SCREEN ROW 17 COLUMN 12 STRING(TRANFILE.INV-NO,"ZZZZZZZZZZ").
	   PUT SCREEN ROW 17 COLUMN 23 TRANFILE.TR-STAT.
	   PUT SCREEN ROW 17 COLUMN 27 TRANFILE.T-TYPE.
	   PUT SCREEN ROW 17 COLUMN 29 STRING(TRANFILE.T-AMT,"-ZZZ,ZZZ.99").
	   X = "N".
	   END.
	   ELSE DO:
	   FIND NEXT TRANFILE WHERE TRANFILE.COMP# = XCOM AND
				     TRANFILE.DIV# = XDIV AND
				     TRANFILE.CUST# = XCST
				     USE-INDEX T-DATE NO-ERROR.
	   IF NOT AVAILABLE TRANFILE THEN LEAVE.
	   PUT SCREEN ROW 17 COLUMN 1 STRING(TRANFILE.T-DATE,"99/99/9999").
	   PUT SCREEN ROW 17 COLUMN 12 STRING(TRANFILE.INV-NO,"ZZZZZZZZZZ").
	   PUT SCREEN ROW 17 COLUMN 23 TRANFILE.TR-STAT.
	   PUT SCREEN ROW 17 COLUMN 27 TRANFILE.T-TYPE.
	   PUT SCREEN ROW 17 COLUMN 29 STRING(TRANFILE.T-AMT,"-ZZZ,ZZZ.99").
	   END.
	   FIND NEXT TRANFILE WHERE TRANFILE.COMP# = XCOM AND
				     TRANFILE.DIV# = XDIV AND
				     TRANFILE.CUST# = XCST
				     USE-INDEX T-DATE NO-ERROR.
	   IF NOT AVAILABLE TRANFILE THEN LEAVE.
	   PUT SCREEN ROW 18 COLUMN 1 STRING(TRANFILE.T-DATE,"99/99/9999").
	   PUT SCREEN ROW 18 COLUMN 12 STRING(TRANFILE.INV-NO,"ZZZZZZZZZZ").
	   PUT SCREEN ROW 18 COLUMN 23 TRANFILE.TR-STAT.
	   PUT SCREEN ROW 18 COLUMN 27 TRANFILE.T-TYPE.
	   PUT SCREEN ROW 18 COLUMN 29 STRING(TRANFILE.T-AMT,"-ZZZ,ZZZ.99").
	   FIND NEXT TRANFILE WHERE TRANFILE.COMP# = XCOM AND
				     TRANFILE.DIV# = XDIV AND
				     TRANFILE.CUST# = XCST
				     USE-INDEX T-DATE NO-ERROR.
	   IF NOT AVAILABLE TRANFILE THEN LEAVE.
	   PUT SCREEN ROW 19 COLUMN 1 STRING(TRANFILE.T-DATE,"99/99/9999").
	   PUT SCREEN ROW 19 COLUMN 12 STRING(TRANFILE.INV-NO,"ZZZZZZZZZZ").
	   PUT SCREEN ROW 19 COLUMN 23 TRANFILE.TR-STAT.
	   PUT SCREEN ROW 19 COLUMN 27 TRANFILE.T-TYPE.
	   PUT SCREEN ROW 19 COLUMN 29 STRING(TRANFILE.T-AMT,"-ZZZ,ZZZ.99").
	   FIND NEXT TRANFILE WHERE TRANFILE.COMP# = XCOM AND
				     TRANFILE.DIV# = XDIV AND
				     TRANFILE.CUST# = XCST
				     USE-INDEX T-DATE NO-ERROR.
	   IF NOT AVAILABLE TRANFILE THEN LEAVE.
	   PUT SCREEN ROW 20 COLUMN 1 STRING(TRANFILE.T-DATE,"99/99/9999").
	   PUT SCREEN ROW 20 COLUMN 12 STRING(TRANFILE.INV-NO,"ZZZZZZZZZZ").
	   PUT SCREEN ROW 20 COLUMN 23 TRANFILE.TR-STAT.
	   PUT SCREEN ROW 20 COLUMN 27 TRANFILE.T-TYPE.
	   PUT SCREEN ROW 20 COLUMN 29 STRING(TRANFILE.T-AMT,"-ZZZ,ZZZ.99").
	   FIND NEXT TRANFILE WHERE TRANFILE.COMP# = XCOM AND
				     TRANFILE.DIV# = XDIV AND
				     TRANFILE.CUST# = XCST
				     USE-INDEX T-DATE NO-ERROR.
	   IF NOT AVAILABLE TRANFILE THEN LEAVE.
	   PUT SCREEN ROW 21 COLUMN 1 STRING(TRANFILE.T-DATE,"99/99/9999").
	   PUT SCREEN ROW 21 COLUMN 12 STRING(TRANFILE.INV-NO,"ZZZZZZZZZZ").
	   PUT SCREEN ROW 21 COLUMN 23 TRANFILE.TR-STAT.
	   PUT SCREEN ROW 21 COLUMN 27 TRANFILE.T-TYPE.
	   PUT SCREEN ROW 21 COLUMN 29 STRING(TRANFILE.T-AMT,"-ZZZ,ZZZ.99").
	   FIND NEXT TRANFILE WHERE TRANFILE.COMP# = XCOM AND
				     TRANFILE.DIV# = XDIV AND
				     TRANFILE.CUST# = XCST
				     USE-INDEX T-DATE NO-ERROR.
	   IF NOT AVAILABLE TRANFILE THEN LEAVE.
	   PUT SCREEN ROW 22 COLUMN 1 STRING(TRANFILE.T-DATE,"99/99/9999").
	   PUT SCREEN ROW 22 COLUMN 12 STRING(TRANFILE.INV-NO,"ZZZZZZZZZZ").
	   PUT SCREEN ROW 22 COLUMN 23 TRANFILE.TR-STAT.
	   PUT SCREEN ROW 22 COLUMN 27 TRANFILE.T-TYPE.
	   PUT SCREEN ROW 22 COLUMN 29 STRING(TRANFILE.T-AMT,"-ZZZ,ZZZ.99").
	   FIND NEXT TRANFILE WHERE TRANFILE.COMP# = XCOM AND
				     TRANFILE.DIV# = XDIV AND
				     TRANFILE.CUST# = XCST
				     USE-INDEX T-DATE NO-ERROR.
	   IF NOT AVAILABLE TRANFILE THEN LEAVE.
	   PUT SCREEN ROW 17 COLUMN 42 STRING(TRANFILE.T-DATE,"99/99/9999").
	   PUT SCREEN ROW 17 COLUMN 53 STRING(TRANFILE.INV-NO,"ZZZZZZZZZZ").
	   PUT SCREEN ROW 17 COLUMN 64 TRANFILE.TR-STAT.
	   PUT SCREEN ROW 17 COLUMN 68 TRANFILE.T-TYPE.
	   PUT SCREEN ROW 17 COLUMN 70 STRING(TRANFILE.T-AMT,"-ZZZ,ZZZ.99").
	   FIND NEXT TRANFILE WHERE TRANFILE.COMP# = XCOM AND
				     TRANFILE.DIV# = XDIV AND
				     TRANFILE.CUST# = XCST
				     USE-INDEX T-DATE NO-ERROR.
	   IF NOT AVAILABLE TRANFILE THEN LEAVE.
	   PUT SCREEN ROW 18 COLUMN 42 STRING(TRANFILE.T-DATE,"99/99/9999").
	   PUT SCREEN ROW 18 COLUMN 53 STRING(TRANFILE.INV-NO,"ZZZZZZZZZZ").
	   PUT SCREEN ROW 18 COLUMN 64 TRANFILE.TR-STAT.
	   PUT SCREEN ROW 18 COLUMN 68 TRANFILE.T-TYPE.
	   PUT SCREEN ROW 18 COLUMN 70 STRING(TRANFILE.T-AMT,"-ZZZ,ZZZ.99").
	   FIND NEXT TRANFILE WHERE TRANFILE.COMP# = XCOM AND
				     TRANFILE.DIV# = XDIV AND
				     TRANFILE.CUST# = XCST
				     USE-INDEX T-DATE NO-ERROR.
	   IF NOT AVAILABLE TRANFILE THEN LEAVE.
	   PUT SCREEN ROW 19 COLUMN 42 STRING(TRANFILE.T-DATE,"99/99/9999").
	   PUT SCREEN ROW 19 COLUMN 53 STRING(TRANFILE.INV-NO,"ZZZZZZZZZZ").
	   PUT SCREEN ROW 19 COLUMN 64 TRANFILE.TR-STAT.
	   PUT SCREEN ROW 19 COLUMN 68 TRANFILE.T-TYPE.
	   PUT SCREEN ROW 19 COLUMN 70 STRING(TRANFILE.T-AMT,"-ZZZ,ZZZ.99").
	   FIND NEXT TRANFILE WHERE TRANFILE.COMP# = XCOM AND
				     TRANFILE.DIV# = XDIV AND
				     TRANFILE.CUST# = XCST
				     USE-INDEX T-DATE NO-ERROR.
	   IF NOT AVAILABLE TRANFILE THEN LEAVE.
	   PUT SCREEN ROW 20 COLUMN 42 STRING(TRANFILE.T-DATE,"99/99/9999").
	   PUT SCREEN ROW 20 COLUMN 53 STRING(TRANFILE.INV-NO,"ZZZZZZZZZZ").
	   PUT SCREEN ROW 20 COLUMN 64 TRANFILE.TR-STAT.
	   PUT SCREEN ROW 20 COLUMN 68 TRANFILE.T-TYPE.
	   PUT SCREEN ROW 20 COLUMN 70 STRING(TRANFILE.T-AMT,"-ZZZ,ZZZ.99").
	   FIND NEXT TRANFILE WHERE TRANFILE.COMP# = XCOM AND
				     TRANFILE.DIV# = XDIV AND
				     TRANFILE.CUST# = XCST
				     USE-INDEX T-DATE NO-ERROR.
	   IF NOT AVAILABLE TRANFILE THEN LEAVE.
	   PUT SCREEN ROW 21 COLUMN 42 STRING(TRANFILE.T-DATE,"99/99/9999").
	   PUT SCREEN ROW 21 COLUMN 53 STRING(TRANFILE.INV-NO,"ZZZZZZZZZZ").
	   PUT SCREEN ROW 21 COLUMN 64 TRANFILE.TR-STAT.
	   PUT SCREEN ROW 21 COLUMN 68 TRANFILE.T-TYPE.
	   PUT SCREEN ROW 21 COLUMN 70 STRING(TRANFILE.T-AMT,"-ZZZ,ZZZ.99").
	   FIND NEXT TRANFILE WHERE TRANFILE.COMP# = XCOM AND
				     TRANFILE.DIV# = XDIV AND
				     TRANFILE.CUST# = XCST
				     USE-INDEX T-DATE NO-ERROR.
	   IF NOT AVAILABLE TRANFILE THEN LEAVE.
	   PUT SCREEN ROW 22 COLUMN 42 STRING(TRANFILE.T-DATE,"99/99/9999").
	   PUT SCREEN ROW 22 COLUMN 53 STRING(TRANFILE.INV-NO,"ZZZZZZZZZZ").
	   PUT SCREEN ROW 22 COLUMN 64 TRANFILE.TR-STAT.
	   PUT SCREEN ROW 22 COLUMN 68 TRANFILE.T-TYPE.
	   PUT SCREEN ROW 22 COLUMN 70 STRING(TRANFILE.T-AMT,"-ZZZ,ZZZ.99").
	   UPDATE ANS AUTO-RETURN
	   WITH ROW FRAME-ROW + 15 + FRAME-LINE + 1 COLUMN 20
	   WITH SIDE-LABELS OVERLAY FRAME FRAME-MORE NO-BOX
	   COLOR DISPLAY W/MA PROMPT MA/W.
	   IF NOT ANS THEN LEAVE.
	   PUT SCREEN ROW 17 COLUMN 1 NOTHING.
	   PUT SCREEN ROW 18 COLUMN 1 NOTHING.
	   PUT SCREEN ROW 19 COLUMN 1 NOTHING.
	   PUT SCREEN ROW 20 COLUMN 1 NOTHING.
	   PUT SCREEN ROW 21 COLUMN 1 NOTHING.
	   PUT SCREEN ROW 22 COLUMN 1 NOTHING.
     END.
   PAUSE.
END.
