//CBL01 JOB 1,NOTIFY=&SYSUID
//***************************************************/
//* Copyright Contributors to the COBOL Programming Course
//* SPDX-License-Identifier: CC-BY-4.0
//***************************************************/
//COBRUN  EXEC IGYWCL
//COBOL.SYSIN  DD DSN=&SYSUID..CBL(CBL01),DISP=SHR
//LKED.SYSLMOD DD DSN=&SYSUID..LOAD(CBL01),DISP=SHR
//***************************************************/
// IF RC = 0 THEN
//***************************************************/
//* Define input dataset for account records */
//RUN     EXEC PGM=CBL01
//STEPLIB   DD DSN=&SYSUID..LOAD,DISP=SHR
//ACCTREC   DD DSN=&SYSUID..DATA,DISP=SHR
//* Define output dataset for printing */
//PRTLINE   DD DSN=&SYSUID..CBL01.OUTPUT,DISP=(NEW,CATLG,DELETE),
//             SPACE=(CYL,(10,5))
//* Define system output device and limit output size */
//SYSOUT    DD SYSOUT=*,OUTLIM=15000
//CEEDUMP   DD DUMMY
//SYSUDUMP  DD DUMMY
//***************************************************/
// ELSE
// ENDIF
