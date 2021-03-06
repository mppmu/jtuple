C   14/09/88 809141902  MEMBER NAME  #TAKLUMI (JADESR)      FORTRAN
      PROGRAM TAKLUMI           ! PMF give main program a name

      implicit none

*//F11JOL   JOB 00010622,OLSSON,CLASS=A,MSGLEVEL=(1,0),TIME=(0,08)
*//*MAIN RELPRI=HIG
*//*
*//*      ************************************************
*//*      *  MODIFIED VERSON OF BBGGSELS(RDLUMI) F22WAT  *
*//*      *   USES NEW BARREL LUMI FILE FROM TAKEDA      *
*//*      ************************************************
*//*                                              J.OLSSON 15.1.82
*//*                    LAST CHANGE      03.1.83
*
*                                        20.09.00 P. Movilla Fernandez
*                                                 Some small mods (HBOOK, I/O ...)
*                                                 
C
* PMF: Add run number range 24214 - 30000
      INTEGER*2 hrun
      integer NLINE, NNRLU
      parameter( NLINE=50, NNRLU=58 )
      integer NNRL(58),NNRU(58)
      real EAVAR(58),SLUM(58),DSLUM(58)
      DATA NNRL/10599, 6000, 2600,  699, 1491,  699, 1282, 1491, 1660,
     $  2306, 3320, 3504, 3561, 4429, 4993, 6000, 6606, 7181, 7295,
     $  7589, 8712,  699, 6000,6638,6948,10001,10599,11001,11473,7968,
     $ 10001,10493,10974,10001,10493,10493,10818,11288,12519,13000,
     $ 15189,15693,17595,20000,10974,13000,13700,14432,14606,14924,
     $ 15693,16734,18003,20000,21705,22441,23352,24214/
      DATA NNRU/20000,10598, 6000, 1490, 2600, 1281, 1490, 1659, 2226,
     $  3319, 3503, 3560, 4428, 4992, 6000, 6605, 7180, 7294, 7588,
     $  7967,10000, 2600, 6637,6947,7180,10598,11000,11472,12518,8711,
     $ 10492,10973,12518,12518,12518,10817,11287,12518,12950,15188,
     $ 15689,16856,19025,24187,11472,13699,14431,14605,14923,15689,
     $ 16733,18002,19025,21704,22440,23351,24187,30397/
* PMF: Introduce lumi per cms-range statistics
      integer NECM
      parameter( NECM=6 )
      real ECML(necm),ECMU(necm),EAVAR2(necm),SLUM2(necm),DSLUM2(necm)
      integer irunl(necm), irunh(necm)
c      DATA ECML/12. , 21.5, 34.5, 37.5, 43.,11.0/
c      DATA ECMU/14.5, 22.5, 35.5, 38.5, 45.,48.0/
      DATA ECML / 13.0, 21.0, 33.8, 34.0, 37.3, 43.4 /
      DATA ECMU / 15.0, 23.0, 36.0, 36.0, 39.3, 46.6 /
      data irunl / 7968, 7592,  6193, 24214, 23352, 16803 /
      data irunh / 8692, 7962, 12518, 30397, 24187, 23351 /

      integer nrun, nrun1, nrun2, nrunl, nrunu, iunit, iline, iskip
     &     , ier, i, jl, je
      real EAVEBR,BRLS,DBRL2S,EBMOLD,DBRLSE,brlse,brl,ebm,dbrl,DBRLS2
     &     , ecme,DBRLS

C
*- PMF Initialize HBOOK
      INTEGER IMEMO
      COMMON /PAWC/IMEMO(100000)
      CALL HLIMIT(100000)
* PMF      CALL ACORE(10000)
      CALL HBOOK1( 1,'INTEGRATED BARREL LUMI FOR JADE',100,0.,50.,0) ! PMF
      CALL HBOOK1( 2,'INTEGRATED BARREL LUMI FOR JADE',100,20.,50.,0) ! PMF
*- PMF Read only NRUN1, NRUN2; fix IUNIT
*      READ(5,100) IUNIT, NRUN1, NRUN2
*  100 FORMAT(3I10)
      READ(5,*) NRUN1, NRUN2 !PMF FMT=100->FMT=*
      IUNIT=20
      OPEN(IUNIT,FILE='lumi.dat',FORM='FORMATTED',STATUS='OLD')
C
      WRITE(6,200) NRUN1, NRUN2
  200 FORMAT(1H1//////////20X,52('*')/20X,'*',50X,'*'/
     &  20X,'*  LUMINOSITY LIST FROM RUN',I6,' UP TO RUN',I6,'  *'/
     &  20X,'*',50X,'*'/20X,52('*')//)
C
C -------  INITIALIZATION  -------------
      CALL LUMINT( IUNIT, NRUN1, NRUN2 )
C    IUNIT: LOGICAL UNIT NUMBER OF A RESULT FILE
C    ( NRUN1, NRUN2 ): RANGE OF RUNS
C   NOTE: NRUN2 - NRUN1 HAS TO BE POSITIVE AND LESS THAN 30000 (MAXL)
C       YOU CAN CALL 'LUMINT' AT ANY TIME WHEN YOU WANT TO INITIALIZE
C     THE INTERNAL TABLE.  THE INPUT RESULT FILE IS AUTOMATICALLY
C     REWOUND.
C --------------------------------------
C
      ILINE= NLINE
      EAVEBR = 0.
      BRLS= 0.
      DBRL2S= 0.
      ISKIP = 0
      EBMOLD = -1.
      DO 4710  I = 1,NNRLU
         SLUM(I) = 0.
         DSLUM(I) = 0.
 4710 continue
*     PMF: INITIALIZE LUMI PER ECMS-RANGE STATISTICS
      DO 4711  I = 1,NECM
         SLUM2(I) = 0.
         DSLUM2(I) = 0.
 4711 continue

      DO 10 NRUN= NRUN1, NRUN2

         IF( ILINE.LT.NLINE ) GOTO 1
         WRITE(6,300)
 300     FORMAT(1H1///6X,'RUNS',6X,' BEAM ',10X,'BARREL LUMINOSITY ')
         ILINE= 0
 1       CONTINUE
C
         CALL RDLUMI( NRUN, EBM, BRL, DBRL )
C    INPUT   NRUN: RUN NUMBER
C    OUTPUT  EBM: BEAM ENERGY (GEV)
C            BRL, DBRL: BARREL LUMINOSITY AND ITS ERROR
C --------------------------------------
C
         IF(EBM.LT.1.) GO TO 11
         HRUN = NRUN
C.........RUNS TO BE EXCLUDED
         CALL RDATA(IER,HRUN)
C     RDATA IN F11LHO.JADEGL; IER=0; GOOD DATA RUNS
         IF(IER.EQ.0) GO TO 1501
         WRITE(6,1510) HRUN
 1510    FORMAT(' FOLLOWING RUN EXCLUDED BY RDATA ',I8)
         GO TO 11
 1501    CONTINUE
C ----------------------------------------------------------------
C     EXCLUSION BY RUN NUMBER HERE
C ----------------------------------------------------------------
C RUN PERIOD 5064 TO 5141  HAS TOF INTERCHANGES, COLANAR TRIGGER USELESS
         IF(HRUN.GE.5064 .AND.HRUN.LE.5141) GO TO 11
C RUN PERIOD 12417 TO 12445 HAS NO LUMINOSITY, SEPARATED BEAMS
         IF(HRUN.GE.12417.AND.HRUN.LE.12445) GO TO 11
C SKIP R 13106-13145
         IF(HRUN.GE.13106.AND.HRUN.LE.13145) GO TO 11
C NO COPLANAR TRIGGER BEFORE RUN 699
         IF(HRUN.LT. 699) GO TO 11
C     IF(HRUN.LT.10493) GO TO 11
C     IF(HRUN.GT.2294) GO TO 11
C ----------------------------------------------------------------
C     EXCLUSION BY BEAM ENERGY HERE
C ----------------------------------------------------------------
C     IF(EBM.LT.13.00) GO TO 11
C     IF(EBM.GT.20.00) GO TO 11
C
         IF(ABS(EBM-EBMOLD).LT..003) GO TO 15
C      IF(EBM.EQ.EBMOLD) GO TO 15
         IF(EBMOLD.LT.1.) GO TO 16
 450     CONTINUE
         DBRLSE = SQRT( DBRLS2 )
C PRINT SEPARATE ENERGY PERIOD SUMS
         WRITE(6,400) NRUNL,NRUNU,EBMOLD,BRLSE,DBRLSE
 400     FORMAT(' ',I5,' ',I5,'  ',F7.3,'   ',E14.6,' +- ',E14.6)
C
 16      ILINE= ILINE +1
         BRLSE = 0.
         DBRLS2 = 0.
         EBMOLD = EBM
         NRUNL = NRUN
         IF(ISKIP.EQ.1) GO TO 10
 15      CONTINUE
C  TOTAL PERIOD SUM AND ERROR
         BRLS= BRLS +BRL
         DBRL2S= DBRL2S +DBRL**2
         EAVEBR = EAVEBR + BRL*EBM
C
         DO 1060  JL = 1,NNRLU
            IF(NRUN.LT.NNRL(JL).OR.NRUN.GT.NNRU(JL)) GO TO 1060
            SLUM(JL) = SLUM(JL) + BRL
            DSLUM(JL) = DSLUM(JL) + DBRL**2
            EAVAR(JL) = EAVAR(JL) + BRL*EBM

C     remove this from loop over run ranges to avoid double (multiple)
C     counting of lumi contributions (STK)
* PMF: LUMI PER ENERGY RANGE
c            ECME = 2.*EBM
c            DO 1061 JE = 1,NECM
c               IF(ECME.LT.ECML(JE).OR.ECME.GT.ECMU(JE)) GO TO 1061
c               SLUM2(JE) = SLUM2(JE) + BRL
c               DSLUM2(JE) = DSLUM2(JE) + DBRL**2
c               EAVAR2(JE) = EAVAR2(JE) + BRL*EBM
c 1061       CONTINUE

 1060    CONTINUE

* PMF: LUMI PER ENERGY RANGE
         ECME= 2.0*EBM
         DO 1061 JE= 1, NECM
            IF( ECME.LT.ECML(JE) .OR. ECME.GT.ECMU(JE) .or. 
     &           nrun.lt.irunl(je) .or. nrun.gt.irunh(je) ) GO TO 1061
            SLUM2(JE)= SLUM2(JE) + BRL
            DSLUM2(JE)= DSLUM2(JE) + DBRL**2
            EAVAR2(JE)= EAVAR2(JE) + BRL*EBM
 1061    CONTINUE

C
         ECME = 2.*EBM
         CALL HFILL( 1,ECME,0,BRL)
         CALL HFILL( 2,ECME,0,BRL)
C  SEPARATE ENERGY SUMS AND ERRORS
         BRLSE = BRLSE + BRL
         DBRLS2= DBRLS2 +DBRL**2
C
         NRUNU = NRUN
 11      IF(NRUN.EQ.NRUN2) ISKIP = 1
         IF(NRUN.EQ.NRUN2) GO TO 450
 10   CONTINUE
C
C  END OF LOOP OVER RUN NUMBERS, FINAL RESULTS
C
      DBRLS= SQRT( DBRL2S )
      EAVEBR = EAVEBR/BRLS
      WRITE(6,421)
 421  FORMAT(///,100(1H*),//)
      WRITE(6,411) EAVEBR,BRLS,DBRLS
 411  FORMAT(' AVERAGE BEAM ENERGY ',E12.4,' BARREL LUMI : ',E14.6,' +-
     $     ',E14.6)
      WRITE(6,422)
 422  FORMAT(//,100(1H*))
C     PRINT LOOP SUMS
      WRITE(6,307)
 307  FORMAT(' RUN PERIOD         AVER. BE',10X,'BARREL LUMINOSITY ')

      DO 1300  JL = 1,NNRLU
         IF(SLUM(JL).LE.0.) GO TO 1301
         DBRLS= SQRT( SLUM(JL))
         EAVEBR = EAVAR(JL)/SLUM(JL)
         GO TO 1302
 1301    DBRLS= 0.
         EAVEBR = 0.
 1302    WRITE(6,1303) NNRL(JL),NNRU(JL),EAVEBR,SLUM(JL),DBRLS
 1303    FORMAT(' ',I6,' - ',I6,10X,F10.3,10X,E14.6,' +- ',E14.6)
 1300 CONTINUE
* PMF: LUMI PER ENERGY RANGE
      WRITE(6,407)
 407  FORMAT( ' CMS RANGE', 8x, 'RUN RANGE', 9x, 'AVER. BE', 4X
     &     , 'BARREL LUMINOSITY' )
      DO 1400 JE= 1, NECM
         IF( SLUM2(JE).LE.0.0 ) GO TO 1401
         DBRLS= SQRT( SLUM2(JE))
         EAVEBR= EAVAR2(JE)/SLUM2(JE)
         GO TO 1402
 1401    DBRLS= 0.0
         EAVEBR= 0.0
 1402    WRITE( 6, 1403 ) ECML(JE), ECMU(JE), irunl(je), irunh(je)
     &        , EAVEBR, SLUM2(JE), DBRLS
 1403    FORMAT( ' ', F6.3, ' - ', F6.3, 2x, i5, ' - ', i5, 1x, F10.3
     &        , 4X, E14.6, ' +- ', E14.6)
 1400 CONTINUE
* PMF (end)
*PMF      CALL HISTDO
* PMF: HISTOGRAMFILE
      CALL HRPUT( 0, 'lumi.hist', 'N' )
C
      STOP
      END
      SUBROUTINE RDLUMI( NRUNX, EBM, BRL, DBRL ) !
      implicit none
C     PMF name changed: NRUN-> NRUNX
C
C  READ A LUMINOSITY RESULT FILE    24-SEP-81  S.ODAKA
C    MODIFIED TO READ TAKEDAS NEW BARREL LUMI FILES      OLSSON 3.1.83
C
C
C    INPUT   NRUN: RUN NUMBER
C    OUTPUT  EBM: BEAM ENERGY (GEV)
C            BRL, DBRL: BARREL LUMINOSITY AND ITS ERROR
C
C    NOTE: 'LUMINT', WHICH IS A ENTRY OF THIS ROUTINE, HAS TO
C         BE CALLED BEFORE 'RDLUMI' IS USED.
C
      integer NRUNX
      real EBM, BRL, DBRL
      integer MAXL, ndm
      parameter( MAXL=30397, ndm=4 )
      real ADATA(ndm,maxl)
      integer IDATA(ndm,maxl)
      EQUIVALENCE (ADATA(1,1),IDATA(1,1))
      real ADATA1(ndm)
      integer IDATA1(ndm)
      EQUIVALENCE (ADATA1(1),IDATA1(1))
      integer nrun, nrun1, nrun2, itest, iunit, ia, i, nread, nrun1x
     &     , nrun2x, nrunl, idum
C
      NRUN= NRUNX                               ! PMF
      IF( NRUN.LT.NRUN1 .OR. NRUN.GT.NRUN2 ) GOTO 9
      IA= NRUN -NRUN1 +1
      EBM= ADATA(2,IA)
      BRL= ADATA(3,IA)
      DBRL= ADATA(4,IA)
C      WRITE(6,100) IA,IDATA(1,IA),ADATA(2,IA),(ADATA(I,IA),I=3,4)
C  100 FORMAT(5X,2I10,3F10.2)
      RETURN
C
    9 CONTINUE
      WRITE(6,900) NRUN
  900 FORMAT(5X,'***** "RDLUMI" INVALID RUN# =',I6)
      EBM= 0.
      BRL= 0.
      DBRL= 0.
      RETURN
C
C
      ENTRY LUMINT( IUNIT, NRUN1X, NRUN2X ) 
C     PMF names changed: NRUN1->NRUN1X, NRUN2->NRUN2X
      NRUN1= NRUN1X                         ! PMF 
      NRUN2= NRUN2X                         ! PMF
C
C   READ A RESULT FILE ( LUN = IUNIT ) AND FILL A TABLE.
C        IUNIT: LOGICAL UNIT NUMBER
C        (NRUN1, NRUN2): RANGE OF RUNS, RESULTS OF WHICH YOU WANT
C                        TO KNOW. ( NRUN2 - NRUN1 < MAXL )
C
      ITEST= 0
      WRITE(6,1100) IUNIT, NRUN1, NRUN2
 1100 FORMAT(/5X,'*****  INITIALIZATION TO READ LUMINOSITY RESULT FILE'/
     &  5X,'IUNIT =',I3,', NRUN1 =',I6,', NRUN2 =',I6)
      NRUNL= NRUN2 -NRUN1 +1
      IF( NRUNL.LT.1 .OR. NRUNL.GT.MAXL ) GOTO 1009
      WRITE(6,2331)
2331  FORMAT(' LUMINT ACCEPTED RUN NUMBERS ')
C
      REWIND IUNIT
C
      DO 1021 IA= 1, NRUNL
         IDATA(1,IA)= 0
         DO 1020 I= 2, 4
            ADATA(I,IA)= 0.0
 1020    continue
 1021 continue

C     
      NREAD= 0
*PMF 1001 READ(IUNIT,END=1002,FMT='(2(I5,3X),F6.3,2E14.6)') ADATA1
* Changed to read Olssons output files (fax), sorted by consecutive 
* run number ranges with same cms energy, instead of the original
* lumi per run files!
 1001 READ(IUNIT,END=1002,FMT='(2(I5,3X),F6.3,2E14.6)')
     >     ADATA1(1),IDUM,ADATA1(2),ADATA1(3),ADATA1(4)
      ITEST = ITEST + 1
      IF(ITEST.LT.21) WRITE(6,1300) IDATA1(1),(ADATA1(I),I=2,4)
 1300 FORMAT(' LUMINT READ: ',I10,3F10.2)
      NRUN= IDATA1(1)
      IF(ITEST.LT.21) WRITE(6,2471) ITEST,NREAD,NRUN,NRUN1,NRUN2
2471  FORMAT(' ITEST NREAD NRUN NRUN1-2 ',5I8)
      IF( NRUN.LT.NRUN1 ) GOTO 1001
      IF( NRUN.GT.NRUN2 ) GOTO 1001
      IA= NRUN -NRUN1 +1
      DO 1010 I= 2, 4
         ADATA(I,IA)= ADATA1(I)
 1010 continue
      NREAD= NREAD +1
      GOTO 1001
C
 1002 WRITE(6,1200) NREAD
 1200 FORMAT(10X,'INITIALIZATION FINISHED. ',I6,' RUNS WERE READ.'/)
      WRITE(6,1201) NRUN
 1201 FORMAT(10X,'LAST RUN ',I6)
      RETURN
C
 1009 WRITE(6,1900) NRUNL,MAXL
 1900 FORMAT(10X,'GIVEN RUN LENGTH(',I6,' ) IS > MAXIMUM =',I5)
      STOP
      END

C   30/05/80 803301135  MEMBER NAME  RDATA    (JADEGS)      FORTRAN
      SUBROUTINE RDATA( IER, HRUN )
      implicit none
C---
C---     TABLE FOR REAL DATA TAKING RUNS, RETURNS FLAG IER
C---     IER = 0 IF REAL DATA,  OTHERWISE IER = 1
C---     IER = 0 IF MONTE CARLO, I.E. HRUN < 100
C---          LAST CHANGE  30.03.88           J.OLSSON  30.05.80
C---
      integer ier
      INTEGER*2 hrun
C
      IER = 1
      IF(HRUN.LT.100) GO TO 100
      IF(HRUN.GT. 539.AND.HRUN.LT. 673) GO TO 100
      IF(HRUN.GT. 698.AND.HRUN.LT. 710) GO TO 100
      IF(HRUN.GT. 763.AND.HRUN.LT. 799) GO TO 100
      IF(HRUN.GT. 803.AND.HRUN.LT.1055) GO TO 100
      IF(HRUN.GT.1055.AND.HRUN.LT.1180) GO TO 100
      IF(HRUN.GT.1209.AND.HRUN.LT.1374) GO TO 100
      IF(HRUN.GT.1375.AND.HRUN.LT.1398) GO TO 100
      IF(HRUN.GT.1496.AND.HRUN.LT.1548) GO TO 100
      IF(HRUN.GT.1557.AND.HRUN.LT.1687) GO TO 100
      IF(HRUN.GT.1710.AND.HRUN.LT.1814) GO TO 100
      IF(HRUN.GT.1845.AND.HRUN.LT.2227) GO TO 100
      IF(HRUN.GT.2294.AND.HRUN.LT.2309) GO TO 100
      IF(HRUN.GT.2310.AND.HRUN.LT.2521) GO TO 100
      IF(HRUN.GT.2744.AND.HRUN.LT.3019) GO TO 100
      IF(HRUN.GT.3036.AND.HRUN.LT.3183) GO TO 100
      IF(HRUN.GT.3184.AND.HRUN.LT.3297) GO TO 100
      IF(HRUN.GT.3324.AND.HRUN.LT.3541) GO TO 100
      IF(HRUN.GT.3560.AND.HRUN.LT.4708) GO TO 100
      IF(HRUN.GT.4709.AND.HRUN.LT.4842) GO TO 100
      IF(HRUN.GT.4852.AND.HRUN.LT.4865) GO TO 100
      IF(HRUN.GT.4993.AND.HRUN.LT.5057) GO TO 100
      IF(HRUN.GT.5057.AND.HRUN.LT.5404) GO TO 100
      IF(HRUN.GT.6310.AND.HRUN.LT.6329) GO TO 100
C KNOWN COSMIC RUNS, TEST RUNS
      IF(HRUN.EQ. 6185) GO TO 200
      IF(HRUN.EQ.15870) GO TO 200
      IF(HRUN.GE.17691.AND.HRUN.LE.17695) GO TO 200
      IF(HRUN.GE.11796.AND.HRUN.LE.11798) GO TO 200
      IF(HRUN.GE. 8630.AND.HRUN.LE. 8631) GO TO 200
      IF(HRUN.EQ.18283) GO TO 200
      IF(HRUN.EQ.18284) GO TO 200
      IF(HRUN.EQ.18287) GO TO 200
      IF(HRUN.EQ.25688) GO TO 200
C
      IF(HRUN.GT.5404                 ) GO TO 100
      GO TO 200
100   IER = 0
200   RETURN
      END
*//LKED.SYSLIB DD
*//            DD
*//            DD
*//            DD
*//            DD
*//            DD UNIT=FAST,DISP=SHR,DSN=F11LHO.JADEGL
*//*           DD DISP=SHR,UNIT=FAST,DSN=R01UTL.HBOOK321.L
*//            DD DISP=SHR,UNIT=FAST,DSN=R01UTL.CERN.KERNLIB4
*//*  <<  RESULT FILE  >>
*//GO.FT01F001 DD DISP=SHR,DSN=F22TAK.DISK.BRLLUMI.G001519
*//            DD DISP=SHR,DSN=F22TAK.DISK.BRLLUMI.G520733
*//            DD DISP=SHR,DSN=F22TAK.DISK.BRLLUMI.G734956
*//            DD DISP=SHR,DSN=F22TAK.DISK.BRLLUMI.G0957.G1091
*//            DD DISP=SHR,DSN=F22TAK.DISK.BRLLUMI.G1092.G1243
*//            DD DISP=SHR,DSN=F22TAK.DISK.BRLLUMI.G1244.G1642
*//*O.FT01F001 DD DISP=SHR,DSN=F22TAK.DISK.ENDLUMI.G001519
*//*           DD DISP=SHR,DSN=F22TAK.DISK.ENDLUMI.G520733
*//*           DD DISP=SHR,DSN=F22TAK.DISK.ENDLUMI.G734956
*//*           DD DISP=SHR,DSN=F22TAK.DISK.ENDLUMI.G0957.G1091
*//*           DD DISP=SHR,DSN=F22TAK.DISK.ENDLUMI.G1092.G1243
*//*           DD DISP=SHR,DSN=F22TAK.DISK.ENDLUMI.G1244.G1642
*//*      +--------------------------------+
*//*   COLLINEAR TWOPRONG TRIGGER START AT RUN 699
*//*   NEUTRAL TRIGGER:    HIGH THRESHOLD 1982:  RUNS 10493-11287
*//*                       LOW  THRESHOLD 1982:  RUNS 11288-12518
*//*     AUTUMN 1982       LOW  THRESHOLD 1982:  RUNS 12557-12950
*//*                       LOW  THRESHOLD 1983:  RUNS 13000-15689
*//*                              SPRING  1984:  RUNS 15690-16738
*//*      +--------------------------------+
*//GO.SYSIN DD *
*         1     23739     30397
*//*  IUNIT     NRUN1     NRUN2
*
*
