//VSAMCBL JOB 1,NOTIFY=&SYSUID
//***************************************************/
//* Copyright Contributors to the COBOL Programming Course
//* SPDX-License-Identifier: CC-BY-4.0
//***************************************************/
//COBRUN  EXEC IGYWCL
//COBOL.SYSIN  DD DSN=&SYSUID..CBL(VSAMCBL),DISP=SHR
//LKED.SYSLMOD DD DSN=&SYSUID..LOAD(VSAMCBL),DISP=SHR
//***************************************************/
// IF RC < 5 THEN
//***************************************************/
//RUN       EXEC PGM=VSAMCBL
//STEPLIB   DD DSN=&SYSUID..LOAD,DISP=SHR
//ACCTREC   DD DSN=&SYSUID..VSAM.AA,DISP=SHR
//IDXREC    DD DSN=&SYSUID..QSAM.INP,DISP=SHR
//PRTLINE   DD SYSOUT=*,OUTLIM=15000
//SYSOUT    DD SYSOUT=*,OUTLIM=15000
//CEEDUMP   DD DUMMY
//SYSUDUMP  DD DUMMY
//***************************************************/
// ELSE
// ENDIF
