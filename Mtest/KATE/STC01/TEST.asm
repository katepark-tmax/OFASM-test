****************************************************************
*        FILENAME: TEST.asm (STORE CHARACTER)                  *
*        AUTHOR  : Yejin Jo                                    *
*        SYSTEM  : OFASM v3.0                                  *
*        REMARKS                                               *
*        Condition Code: The code remains unchanged.           *
*        D2(X2,B2) - Displacement, index, base register        *
*        DATA Lable is Full word(4byte) and its value is 0.    *
*        STC : STORE ONLY 1 BYTE                               *
****************************************************************
TEST       CSECT
           LR        12,15
           USING     TEST,12
* --------------------------------------
* TEST 1 : 
* --------------------------------------
           L         3,=X'0000FF11'
           OFADBGREG 3
           L         5,DATA
           OFADBGREG 5
           STC       3,DATA
           OFADBGREG 3
           L         5,DATA
           OFADBGREG 5

*---------------------------------------
* TEST 2 : 
*---------------------------------------
           L         8,=X'11223344'
           OFADBGREG 8
           L         4,=X'00000002'
           OFADBGREG 4           
           STC       8,FIELDA
           L         8,FIELDA
           OFADBGREG 8
           STC       8,FIELDA
           L         8,FIELDA
           OFADBGREG 8
           STC       8,FIELDA(4)
           L         8,FIELDA(4)
           OFADBGREG 8
* didn't get the above
           STC       8,FIELDB
           L         8,FIELDB
           OFADBGREG 8
           STC       8,FIELDB(4)
           L         8,FIELDB(4)
           OFADBGREG 8
* didn't get the above
           
* --------------------------------------
* END TEST
* --------------------------------------
           BR        14
DATA       DC        F'2'
FIELDA     DC        X'AABBCCDD'
FIELDB     DC        C'ABCD'
           END

* NOT SURE THAT THIS PROCESS IS RIGHT - MINSEONG LEE
