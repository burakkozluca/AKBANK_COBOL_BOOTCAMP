//SORTEG03  JOB ' ',CLASS=A,MSGLEVEL=(1,1),MSGCLASS=X,NOTIFY=&SYSUID
//DELET100  EXEC PGM=IDCAMS
//SYSPRINT  DD SYSOUT=*
//SYSIN     DD *
  DELETE Z95642.QSAM.INP NONVSAM
  IF LASTCC LE 08 THEN SET MAXCC = 00
//SORT0200  EXEC PGM=SORT
//SYSOUT    DD SYSOUT=*
//SORTIN    DD *
00001285
00002235
00001840
00051840
00061978
//SORTOUT   DD DSN=Z95642.QSAM.INP,
//             DISP=(NEW,CATLG,DELETE),
//             SPACE=(TRK,(5,5),RLSE),
//             DCB=(RECFM=FB,LRECL=8)
//SYSIN     DD *
  SORT FIELDS=(1,8,CH,A)
  SORT FIELDS=COPY
