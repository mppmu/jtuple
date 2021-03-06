CDECK  ID>, PXINIT.
      SUBROUTINE PXINIT
*.*********************************************************
*. ------
*. PXINIT
*. ------
*.
*. Pass the PX version information to common blocks in
*. the sequence CRVER
*.
*. CALLS     : none
*. CALLED    : By User
*.
*. AUTHOR    :  David Chrisman
*. CREATED   :  25-June-1996
*. LAST MOD  :  25-June-1996
*.
*. Modification Log.
*.
*.*********************************************************
      IMPLICIT NONE
      CHARACTER*132 CHREP
      COMMON/RCREP/CHREP
      INTEGER     IVRO,ISVRO,IDACRO,IDAMRO,IVGR,ISVGR,IDACGR,IDAMGR,
     +            IVUS,ISVUS,IDACUS,IDAMUS,IVCV,ISVCV,IDACCV,IDAMCV,
     +            IVCJ,ISVCJ,IDACCJ,IDAMCJ,IVCZ,ISVCZ,IDACCZ,IDAMCZ,
     +            IVCT,ISVCT,IDACCT,IDAMCT,IVCX,ISVCX,IDACCX,IDAMCX,
     +            IVCE,ISVCE,IDACCE,IDAMCE,IVTB,ISVTB,IDACTB,IDAMTB,
     +            IVPB,ISVPB,IDACPB,IDAMPB,IVEB,ISVEB,IDACEB,IDAMEB,
     +            IVPE,ISVPE,IDACPE,IDAMPE,IVEE,ISVEE,IDACEE,IDAMEE,
     +            IVEM,ISVEM,IDACEM,IDAMEM,IVHB,ISVHB,IDACHB,IDAMHB,
     +            IVHE,ISVHE,IDACHE,IDAMHE,IVHP,ISVHP,IDACHP,IDAMHP,
     +            IVHM,ISVHM,IDACHM,IDAMHM,IVMB,ISVMB,IDACMB,IDAMMB,
     +            IVME,ISVME,IDACME,IDAMME,IVMM,ISVMM,IDACMM,IDAMMM,
     +            IVFD,ISVFD,IDACFD,IDAMFD,IVDD,ISVDD,IDACDD,IDAMDD,
     +            IVOD,ISVOD,IDACOD,IDAMOD,IVOU,ISVOU,IDACOU,IDAMOU,
     +            IVOC,ISVOC,IDACOC,IDAMOC,IVTT,ISVTT,IDACTT,IDAMTT,
     +            IVTR,ISVTR,IDACTR,IDAMTR,IVFI,ISVFI,IDACFI,IDAMFI,
     +            IVON,ISVON,IDACON,IDAMON,IVJC,ISVJC,IDACJC,IDAMJC,
     +            IVSU,ISVSU,IDACSU,IDAMSU,IVOP,ISVOP,IDACOP,IDAMOP,
     +            IVDX,ISVDX,IDACDX,IDAMDX,IVSI,ISVSI,IDACSI,IDAMSI,
     +            IVCS,ISVCS,IDACCS,IDAMCS,IVLL,ISVLL,IDACLL,IDAMLL,
     +            IVLA,ISVLA,IDACLA,IDAMLA,IVBT,ISVBT,IDACBT,IDAMBT
      INTEGER     IVID,ISVID,IDACID,IDAMID,IVLM,ISVLM,IDACLM,IDAMLM,
     +            IVDC,ISVDC,IDACDC,IDAMDC,IVSW,ISVSW,IDACSW,IDAMSW,
     +            IVCU,ISVCU,IDACCU,IDAMCU,IVHI,ISVHI,IDACHI,IDAMHI,
     +            IVGC,ISVGC,IDACGC,IDAMGC,IVSQ,ISVSQ,IDACSQ,IDAMSQ,
     +            IVPX,ISVPX,IDACPX,IDAMPX,IVTE,ISVTE,IDACTE,IDAMTE,
     +            IVWW,ISVWW,IDACWW,IDAMWW,IVMT,ISVMT,IDACMT,IDAMMT
      COMMON/CRVER/IVRO,ISVRO,IDACRO,IDAMRO,IVGR,ISVGR,IDACGR,IDAMGR,
     +            IVUS,ISVUS,IDACUS,IDAMUS,IVCV,ISVCV,IDACCV,IDAMCV,
     +            IVCJ,ISVCJ,IDACCJ,IDAMCJ,IVCZ,ISVCZ,IDACCZ,IDAMCZ,
     +            IVCT,ISVCT,IDACCT,IDAMCT,IVCX,ISVCX,IDACCX,IDAMCX,
     +            IVCE,ISVCE,IDACCE,IDAMCE,IVTB,ISVTB,IDACTB,IDAMTB,
     +            IVPB,ISVPB,IDACPB,IDAMPB,IVEB,ISVEB,IDACEB,IDAMEB,
     +            IVPE,ISVPE,IDACPE,IDAMPE,IVEE,ISVEE,IDACEE,IDAMEE,
     +            IVEM,ISVEM,IDACEM,IDAMEM,IVHB,ISVHB,IDACHB,IDAMHB,
     +            IVHE,ISVHE,IDACHE,IDAMHE,IVHP,ISVHP,IDACHP,IDAMHP,
     +            IVHM,ISVHM,IDACHM,IDAMHM,IVMB,ISVMB,IDACMB,IDAMMB,
     +            IVME,ISVME,IDACME,IDAMME,IVMM,ISVMM,IDACMM,IDAMMM,
     +            IVFD,ISVFD,IDACFD,IDAMFD,IVDD,ISVDD,IDACDD,IDAMDD,
     +            IVOD,ISVOD,IDACOD,IDAMOD,IVOU,ISVOU,IDACOU,IDAMOU,
     +            IVOC,ISVOC,IDACOC,IDAMOC,IVTT,ISVTT,IDACTT,IDAMTT,
     +            IVTR,ISVTR,IDACTR,IDAMTR,IVFI,ISVFI,IDACFI,IDAMFI,
     +            IVON,ISVON,IDACON,IDAMON,IVJC,ISVJC,IDACJC,IDAMJC,
     +            IVSU,ISVSU,IDACSU,IDAMSU,IVOP,ISVOP,IDACOP,IDAMOP,
     +            IVDX,ISVDX,IDACDX,IDAMDX,IVSI,ISVSI,IDACSI,IDAMSI,
     +            IVCS,ISVCS,IDACCS,IDAMCS,IVLL,ISVLL,IDACLL,IDAMLL,
     +            IVLA,ISVLA,IDACLA,IDAMLA,IVBT,ISVBT,IDACBT,IDAMBT
      COMMON/CRVER/IVID,ISVID,IDACID,IDAMID,IVLM,ISVLM,IDACLM,IDAMLM,
     +            IVDC,ISVDC,IDACDC,IDAMDC,IVSW,ISVSW,IDACSW,IDAMSW,
     +            IVCU,ISVCU,IDACCU,IDAMCU,IVHI,ISVHI,IDACHI,IDAMHI,
     +            IVGC,ISVGC,IDACGC,IDAMGC,IVSQ,ISVSQ,IDACSQ,IDAMSQ,
     +            IVPX,ISVPX,IDACPX,IDAMPX,IVTE,ISVTE,IDACTE,IDAMTE,
     +            IVWW,ISVWW,IDACWW,IDAMWW,IVMT,ISVMT,IDACMT,IDAMMT
*
      INTEGER IV1,IV2,IDATQQ
*
*-- Get PX version from Patchy title card.
      WRITE(CHREP,1000)
      READ(CHREP,1001) IV1,IV2,ISVPX
*-- Get date of PX library creation.
      IDATQQ= 040226
      IDACPX = IDATQQ
*-- Set last mod (initially) to PAM release date.
      IDAMPX =  020626
 1000 FORMAT(
     + 24HPX      1.16/01   020403                                          HOLD
     +      )
 1001 FORMAT(8X,I1,1X,I2,1X,I2)
      IVPX = 100*IV1 + IV2
 1002 FORMAT(18X,I6)

      END
CDECK  ID>, IPXJ7P.
      INTEGER FUNCTION IPXJ7P (IDIN,CHAR)
*.*********************************************************
*. ------
*. IPXJ7P
*. ------
*. SOURCE:  J.W.Gary
*. Convert the Jetset to the (published) PDG ID codes
*. (this is an INTEGER FUNCTION version of PXJ7PD).
*. Usage     :
*.
*.      INTEGER  IPXJ7P,IDIN,IDOUT,IDPDG,IDJET
*.
*.      IDIN = IDPDG
*.      IDOUT = IPXJ7P (IDIN,'J')
*.      IDJET = IDOUT
*.
*. INPUT     : IDIN    The Jetset or PDG ID code
*. OUTPUT    : IDOUT   The PDG or Jetset ID code
*. CONTROL   : CHAR    = 'J' if IDOUT is the Jetset ID
*.                     = ' ' if IDOUT is the PDG ID
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  IDIN,IDOUT
      CHARACTER*1  CHAR

      CALL PXJ7PD (IDIN,IDOUT,CHAR)
      IPXJ7P = IDOUT

      RETURN
      END
CDECK  ID>, PX2BKI.
      SUBROUTINE PX2BKI (AM0,AM1,AM2,PCM)
*.*********************************************************
*. ------
*. PX2BKI
*. ------
*. SOURCE:  J.W.Gary
*. Kinematics in the two-body decay  AM0 --> AM1 + AM2
*. Usage     :
*.
*.      REAL  AM0,AM1,AM2,PCM
*.
*.      CALL PX2BCM (AM0,AM1,AM2,PCM)
*.
*. INPUT     : AM0     The parent particle mass
*. INPUT     : AM1     First daughter mass
*. INPUT     : AM2     Second daughter mass
*. OUTPUT    : PCM     magnitude of the 3-momentum of the
*.                     daughters in the parent's rest frame
*.
*.*********************************************************
      IMPLICIT NONE
      DOUBLE PRECISION AX,BX,CX,PX
      REAL  AM0,AM1,AM2,PCM
      AX = AM0
      BX = AM1
      CX = AM2
      PX = DSQRT ( (AX**2 - (BX + CX)**2)
     +           * (AX**2 - (BX - CX)**2) ) / (2 * AX)
      PCM = PX
      RETURN
      END
CDECK  ID>, PX3JE4.
      SUBROUTINE PX3JE4 (CHAR,PJET1,PJET2,PJET3,AJET3,EJET3,IERR)
*.*********************************************************
*. ------
*. PX3JE4
*. ------
*. SOURCE: J.W.Gary
*. Calculate jet energies for a 3-jet event using the angles
*. between the jets (the 3 jets are assumed to be coplanar),
*. using either massless or massive kinematics.
*. Note: the 3 jets 1,2,3 can be ordered in any way, e.g. it
*.       is not necessary to order them by energy.
*.       A test such as (AJET3(1)+AJET3(2)+AJET3(3).GT.358)
*.       can be made, after this routine is called, to test
*.       the goodness of the planarity assumption.
*. Usage     :
*.
*.      INTEGER  IERR
*.      REAL  PJET1 (4.or.more),PJET2 (4.or.more),
*.            PJET3 (4.or.more),EJET3 (4.or.more),
*.            AJET3 (4.or.more)
*.      CHARACTER*1  CHAR
*.
*.      CHAR = 'M' or ' '
*.      CALL PX3JE3 (CHAR,PJET1,PJET2,PJET3,AJET3,EJET3,IERR)
*.
*. INPUT     : CHAR    = 'M' for massive jets, else = ' '
*. INPUT     : PJET1   4-momemtum of jet 1
*. INPUT     : PJET2   4-momemtum of jet 2
*. INPUT     : PJET3   4-momemtum of jet 3
*. OUTPUT    : AJET3   The angles between the jets (degrees);
*.                     AJET3(i) = angle opposite jet i
*. OUTPUT    : EJET3   The calculated jet energies;
*.                     EJET3(i) = energy of jet 1
*. OUTPUT    : IERR    = 0 if all is OK
*.
*.*********************************************************
      IMPLICIT NONE
      REAL  RXDEG
      PARAMETER  (RXDEG=57.2958)
      INTEGER  IERR
      REAL  PJET1 (*),PJET2 (*),PJET3 (*),EJET3 (*),AJET3 (*),
     +      PMAG (3)
      REAL  CT12,TH12,CT13,TH13,CT23,TH23
      DOUBLE PRECISION  BETA1,BETA2,BETA3,ST12,ST13,ST23,DENOM
      CHARACTER*(*)  CHAR

      IERR = 0
*  angles between the jets
*  ------ ------- --- ----
      CALL PXANG3 (PJET1,PJET2,CT12,TH12,IERR)
      IF (IERR.NE.0) GO TO 990
      CALL PXANG3 (PJET1,PJET3,CT13,TH13,IERR)
      IF (IERR.NE.0) GO TO 990
      CALL PXANG3 (PJET2,PJET3,CT23,TH23,IERR)
      IF (IERR.NE.0) GO TO 990
      AJET3 (3) = TH12 * RXDEG
      AJET3 (2) = TH13 * RXDEG
      AJET3 (1) = TH23 * RXDEG
*  calculate jet velocities
*  --------- --- ----------
      IF (CHAR.EQ.'M') THEN
         CALL PXMAGV (3,PJET1,PMAG(1))
         CALL PXMAGV (3,PJET2,PMAG(2))
         CALL PXMAGV (3,PJET3,PMAG(3))
         BETA1 = PMAG (1) / PJET1 (4)
         BETA2 = PMAG (2) / PJET2 (4)
         BETA3 = PMAG (3) / PJET3 (4)
      ELSE
         BETA1 = 1.D0
         BETA2 = 1.D0
         BETA3 = 1.D0
      END IF
*  assign energy to jets based on angles (and velocities)
*  ------ ------ -- ---- ----- -- ------  --- ----------
      ST12 = BETA1 * BETA2 * SQRT (1. - CT12**2)
      ST13 = BETA1 * BETA3 * SQRT (1. - CT13**2)
      ST23 = BETA2 * BETA3 * SQRT (1. - CT23**2)
      DENOM = ST12 + ST13 + ST23
      IF (DENOM.LE.0) THEN
         WRITE (6,FMT='('' PX3JE4, Error, DENOM ='',E12.4)') DENOM
         IERR = -1
         GO TO 990
      END IF
      EJET3 (1) = (ST23 / DENOM)
      EJET3 (2) = (ST13 / DENOM)
      EJET3 (3) = (ST12 / DENOM)

 990  RETURN
      END
CDECK  ID>, PXADD5.
      SUBROUTINE PXADD5 (VEC1,VEC2,VECO)
*.*********************************************************
*. ------
*. PXADD5
*. ------
*. SOURCE: VECSUB (V. Blobel)
*. Add two 4-momenta, calculate the invariant mass of the sum,
*. then write the invariant mass into 5th component of the
*. output vector
*. Usage     :
*.
*.      REAL  VEC1 (4.or.more),
*.     +      VEC2 (4.or.more),
*.     +      VECO (5.or.more)
*.
*.      CALL PXADD5 (VEC1,VEC2,VECO)
*.
*. INPUT     : VEC1    The first 4-momentum
*. INPUT     : VEC2    The second 4-momentum
*. OUTPUT    : VECO    The 4-vector sum of VEC1 and VEC2
*.                     with the invariant mass of the sum
*.                     written in the 5th component
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  IX
      REAL  VEC1 (*),VEC2 (*),VECO (*)
      DOUBLE PRECISION  AX,BX
      AX = VEC1 (4) + VEC2 (4)
      VECO (4) = AX
      BX = AX * AX
      DO 120 IX = 1,3
          AX = VEC1 (IX) + VEC2 (IX)
          BX = BX - (AX * AX)
          VECO (IX) = AX
 120  CONTINUE
      VECO (5) = DSIGN (DSQRT (DABS (BX)),BX)
      RETURN
      END
CDECK  ID>, PXADDV.
      SUBROUTINE PXADDV (ISIZ,VEC1,VEC2,VECO)
*.*********************************************************
*. ------
*. PXADDV
*. ------
*. SOURCE:  J.W.Gary
*. Add two vectors of arbitrary length
*. Usage     :
*.
*.      INTEGER  ISIZ,NDIM
*.      PARAMETER  (NDIM=1.or.more)
*.      REAL  VEC1 (NDIM.or.more),
*.     +      VEC2 (NDIM.or.more),
*.     +      VECO (NDIM.or.more)
*.
*.      ISIZ = 1.to.NDIM
*.      CALL PXADDV (ISIZ,VEC1,VEC2,VECO)
*.
*. INPUT     : ISIZ    The length of the vectors
*. INPUT     : VEC1    The first vector
*. INPUT     : VEC2    The second vector
*. OUTPUT    : VECO    The vector sum of VEC1 and VEC2
*.                     (elements 1 to ISIZ)
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  ISIZ,IX
      REAL  VEC1 (*),VEC2 (*),VECO (*)
      DOUBLE PRECISION  AX
      DO 120  IX = 1,ISIZ
          AX = VEC1 (IX) + VEC2 (IX)
          VECO (IX) = AX
 120  CONTINUE
      RETURN
      END
CDECK  ID>, PXANG3.
      SUBROUTINE PXANG3 (VEC1,VEC2,COST,THET,IERR)
*.*********************************************************
*. ------
*. PXANG3
*. ------
*. SOURCE: VECSUB (V. Blobel)
*. Calculate the angle beteen two 3-vectors
*. Usage     :
*.
*.      INTEGER  IERR
*.      REAL  VEC1 (3.or.more),
*.     +      VEC2 (3.or.more)
*.      REAL  COST,THET
*.
*.      CALL PXANG3 (VEC1,VEC2,COST,THET,IERR)
*.
*. INPUT     : VEC1    The first vector
*. INPUT     : VEC2    The second vector
*. OUTPUT    : COST    Cosine of the angle between the vectors
*. OUTPUT    : THET    The angle between the vectors (radians)
*. OUTPUT    : IERR    = 0 if all is OK ;   = -1 otherwise
*.
*.*********************************************************
      IMPLICIT NONE
      DOUBLE PRECISION AX,BX,CX,DX
      REAL  VEC1 (*),VEC2 (*)
      REAL  COST,THET
      INTEGER  IX,IERR
      IERR = 0
      AX = 0D0
      BX = 0D0
      CX = 0D0
      DO 120  IX = 1,3
          AX = AX + VEC1 (IX) * VEC1 (IX)
          BX = BX + VEC2 (IX) * VEC2 (IX)
          CX = CX + VEC1 (IX) * VEC2 (IX)
 120  CONTINUE
      DX = DSQRT (AX * BX)
      IF (DX.NE.0.0) THEN
          DX = CX / DX
      ELSE
          WRITE (6,FMT='('' PXANG3: Error, DX='',E12.4)') DX
          IERR = -1
          RETURN
      END IF
      IF (DABS (DX).GT.1.D0) DX = DSIGN (1.D0,DX)
      COST = DX
      THET = DACOS (DX)
      RETURN
      END
CDECK  ID>, PXANXY.
      SUBROUTINE PXANXY (XX,YY,ANG,IERR)
*.*********************************************************
*. ------
*. PXANXY
*. ------
*. SOURCE: Jetset7.1 (T. Sjostrand)
*. Reconstruct the azimuthal angle of a vector,
*. given the X and Y components of a vector
*. Usage     :
*.
*.      INTEGER  IERR
*.      REAL  XX,YY,ANG
*.
*.      CALL PXANXY (XX,YY,ANG,IERR)
*.
*. INPUT     : XX      The X component of a vector
*. INPUT     : YY      The Y component of a vector
*. OUTPUT    : ANG     The azimuthal angle
*. OUTPUT    : IERR    = 0 if all is OK ;   = -1 otherwise
*.
*.*********************************************************
      IMPLICIT NONE
      REAL  PIII
      PARAMETER  (PIII=3.1415927)
      INTEGER  IERR
      REAL  XX,YY,ANG
      DOUBLE PRECISION  ULANGL,RRR,XXX,YYY

      IERR = 0
      XXX = XX
      YYY = YY
      RRR = DSQRT (XXX**2 + YYY**2)
      IF (RRR.LT.1E-20) GO TO 990
      IF ((DABS (XXX)/RRR).LT.0.8) THEN
          ULANGL = DSIGN (DACOS (XXX/RRR),YYY)
      ELSE
          ULANGL = DASIN (YYY/RRR)
          IF (XXX.LT.0..AND.ULANGL.GE.0.) THEN
              ULANGL = PIII - ULANGL
          ELSE IF (XXX.LT.0.) THEN
              ULANGL = - PIII - ULANGL
          END IF
      END IF
      ANG = ULANGL

      RETURN
 990  IERR = -1
      RETURN
      END
CDECK  ID>, PXBET4.
      SUBROUTINE PXBET4 (VEC1,VEC2,BETA)
*.*********************************************************
*. ------
*. PXBET4
*. ------
*. SOURCE:  J.W.Gary
*. Calculate the boost velocity to put VEC1 and VEC2 back-to-back
*. Usage     :
*.
*.      REAL  VEC1 (4.or.more),
*.     +      VEC2 (4.or.more),
*.     +      BETA (3.or.more)
*.
*.      CALL PXBET4 (VEC1,VEC2,BETA)
*.
*. INPUT     : VEC1    First 4-momentum
*. INPUT     : VEC2    Second 4-momentum
*. OUTPUT    : BETA    The 3-vector velocity which, when applied
*.                     in a Lorentz boost, will put VEC1 and VEC2
*.                     back-to-back
*.
*.*********************************************************
      IMPLICIT NONE
      REAL  VEC1 (*),VEC2 (*),BETA (*)
      DOUBLE PRECISION  DBETA (4)
      DOUBLE PRECISION  BETAM
      INTEGER  IX
      DO 120  IX = 1,4
          DBETA (IX) = VEC1 (IX) + VEC2 (IX)
 120  CONTINUE
      IF (DBETA (4).NE.0) THEN
          DO 130  IX = 1,3
              DBETA (IX) = DBETA (IX) / DBETA (4)
 130      CONTINUE
          BETAM = DSQRT (DBETA (1)**2 + DBETA (2)**2 + DBETA (3)**2)
          IF (BETAM.GT.1) THEN
              DO 140  IX = 1,3
                  DBETA (IX) = DBETA (IX) / BETAM
 140          CONTINUE
          END IF
      END IF
      DO 150  IX = 1,3
          BETA (IX) = DBETA (IX)
 150  CONTINUE
      RETURN
      END
CDECK  ID>, PXCHRG.
      SUBROUTINE PXCHRG (IDPDG,ICHRG)
*.*********************************************************
*. ------
*. PXCHRG
*. ------
*. SOURCE: J.W.Gary
*. Routine to determine the charge of a particle, given its ID code
*. in the Particle Data Group format.
*. Usage:
*.
*.      INTEGER  IDPDG,ICHRG
*.
*.      ... generate an event with event generator ...
*.
*.      CALL PXCHRG (IDPDG,ICHRG)
*.
*. INPUT     : IDPDG    The P.D.G. ID of the particle
*. OUTPUT    : ICHRG    3 times the electric charge of the particle
*.                      (ICHRG=-9999 if the IDPDG code is unknown
*.                       to the program).
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  NTABL
      PARAMETER  (NTABL=25)
      INTEGER  IDPDG,ICHRG ,IID
      INTEGER  IDOUT (5)
      REAL  RTABL (NTABL)
      DATA  RTABL  /
     +  -.333333,.666667,-.333333,.666667,-.333333,.666667,
     +  -.333333,.666667,0.,-3333.,-1.,0.,-1.,0.,-1.,0.,-1.,0.,
     +  -3333.,-3333.,0.,0.,0.,1.,0.
     +   /

      IID = IABS (IDPDG)
      IF (IID.LE.25) THEN
          ICHRG = NINT (3.* RTABL (IID))
          IF (ICHRG.EQ.-9999) GO TO 990
      ELSE IF (IID.GE.111.AND.IID.LE.98888) THEN
*       decompose ID into its quark constituents
*       --------- -- ---- --- ----- ------------
          IDOUT (1) = MOD (IID,10)
          IDOUT (2) = MOD (IID/10,10)
          IDOUT (3) = MOD (IID/100,10)
          IDOUT (4) = MOD (IID/1000,10)
Comment          IDOUT (5) = MOD (IID/10000,10)
*       skip diquarks
*       ---- --------
          IF (IDOUT (2).EQ.0.AND.IDOUT (4).NE.0) GO TO 990
          IF (IDOUT (2).GT.8.OR.IDOUT (3).GT.8.OR.
     +        IDOUT (4).GT.8.OR.IDOUT (2).EQ.0.OR.
     +        IDOUT (3).EQ.0) GO TO 990
*       mesons and baryons handled separately
*       ------ --- ------- ------- ----------
          IF (IDOUT (4).EQ.0) THEN
              ICHRG = NINT (3.*(RTABL (IDOUT (3))-RTABL (IDOUT (2))))
              IF (MOD (IDOUT (3),2).EQ.1) ICHRG = -ICHRG
          ELSE
              ICHRG = NINT (3.* (RTABL (IDOUT (2)) + RTABL (IDOUT (3))
     +              + RTABL (IDOUT (4))))
          END IF
      ELSE
          GO TO 990
      END IF
      IF (IDPDG.LT.0) ICHRG = - ICHRG
      GO TO 995
 990  ICHRG = -9999
      WRITE (6,FMT='('' PXCHRG: ID code'',I10,'' is unknown'')') IDPDG
 995  RETURN
      END
CDECK  ID>, PXCOPA.
      SUBROUTINE PXCOPA (IFST,ILST,ISZE,IIDM,ARRI,IODM,ARRO)
*.*********************************************************
*. ------
*. PXCOPA
*. ------
*. SOURCE:  J.W.Gary
*. Copy an array of vectors into another array
*. Usage     :
*.
*.      INTEGER  IIDM,IODM
*.      PARAMETER  (IIDM=1.or.more,IODM=1.or.more)
*.      INTEGER  MXITK,MXOTK
*.      PARAMETER  (MXITK=1.or.more,MXOTK=1.or.more)
*.      REAL  ARRI (IIDM,MXITK),ARRO (IODM,MXOTK)
*.      INTEGER  ISZE,IFST,ILST
*.
*.      ISZE = 1.to.min(IIDM,IODM)
*.      CALL PXCOPA (IFST,ILST,ISZE,IIDM,ARRI,IODM,ARRO)
*.
*. INPUT     : IFST    First vector in ARRI to be copied into ARRO
*. INPUT     : ILST    Last vector in ARRI to be copied into ARRO
*. INPUT     : ISZE    Number of elements of each vector to copy
*. INPUT     : IIDM    First dimension of ARRI
*. INPUT     : ARRI    The input array
*. INPUT     : IODM    First dimension of ARRO
*. OUTPUT    : ARRO    The output array
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  ISZE,IX,IFST,ILST,IIDM,IODM,INR
      REAL  ARRI (IIDM,*),ARRO (IODM,*)
      INR = (ILST - IFST) + 1
      DO 120 IX = 1,INR
          CALL PXCOPV (ISZE,ARRI (1,IFST+IX-1),ARRO (1,IX))
 120  CONTINUE
      RETURN
      END
CDECK  ID>, PXCOPV.
      SUBROUTINE PXCOPV (ISZE,VECI,VECO)
*.*********************************************************
*. ------
*. PXCOPV
*. ------
*. SOURCE:  J.W.Gary
*. Copy a vector of arbitrary length into another
*. Usage     :
*.
*.      INTEGER  NDIM
*.      PARAMETER  (NDIM=1.or.more)
*.      REAL  VEC1 (NDIM.or.more),
*.     +      VECO (NDIM.or.more)
*.      INTEGER  ISZE
*.
*.      ISZE = 1.to.NDIM
*.      CALL PXCOPV (ISZE,VECI,VECO)
*.
*. INPUT     : ISZE    The length of the vector to be copied
*. INPUT     : VECI    The input vector
*. OUTPUT    : VECO    The output vector
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  ISZE,IX
      REAL  VECI (*),VECO (*)
      DO 120 IX = 1,ISZE
          VECO (IX) = VECI (IX)
 120  CONTINUE
      RETURN
      END
CDECK  ID>, PXCRO3.
      SUBROUTINE PXCRO3 (VEC1,VEC2,VECO)
*.*********************************************************
*. ------
*. PXCRO3
*. ------
*. SOURCE: VECSUB (V. Blobel)
*. Calculate the cross product between two 3-vectors
*. Usage     :
*.
*.      REAL  VEC1 (3.or.more),
*.     +      VEC2 (3.or.more),
*.     +      VECO (3.or.more)
*.
*.      CALL PXCRO3 (VEC1,VEC2,VECO)
*.
*. INPUT     : VEC1    The first vector
*. INPUT     : VEC2    The second vector
*. OUTPUT    : VECO    The vector cross product:
*.                       --->   --->   --->
*.                       VECO = VEC1 x VEC2
*.
*.*********************************************************
      IMPLICIT NONE
      REAL  VEC1 (*),VEC2 (*),VECO (*)
      DOUBLE PRECISION  AX,BX

      AX = VEC1 (2) * VEC2 (3)
      BX = VEC1 (3) * VEC2 (2)
      VECO (1) = AX - BX
      AX = VEC1 (3) * VEC2 (1)
      BX = VEC1 (1) * VEC2 (3)
      VECO (2) = AX - BX
      AX = VEC1 (1) * VEC2 (2)
      BX = VEC1 (2) * VEC2 (1)
      VECO (3) = AX - BX

      RETURN
      END
CDECK  ID>, PXDAUT.
      SUBROUTINE  PXDAUT (IPARP,IDAUP,IHIST,IFIND)
*.*********************************************************
*. ------
*. PXDAUT
*. ------
*. SOURCE: J.W.Gary
*. Routine to identify whether a particle positioned in an event
*. generator event record is a decay product of a particle located
*. before it in that record.
*. Usage:
*.
*.      INTEGER  MXTRK
*.      PARAMETER  (MXTRK=4000)
*.      INTEGER  IPARP,IDAUT,IFIND
*.      INTEGER  IHIST (MXTRK)
*.
*.      ... generate an event with event generator ...
*.
*.      CALL PXDAUT (IPARP,IDAUP,IHIST,IFIND)
*.
*. INPUT     : IPARP    Position of the parent-candidate in the
*.                      event record
*. INPUT     : IDAUP    Position of the daughter-candidate
*. INPUT     : IHIST    Particle history record for the event
*. OUTPUT    : IFIND    =  1 if the daughter-candidate is a daughter
*.                           of the parent-candidate
*.                      =  0 if not
*.                      = -1 if there was a problem (improperly
*.                           structured history record ??)
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  MXCNT
      PARAMETER  (MXCNT=1000)
      INTEGER  IPARP,IDAUP,IFIND,INX,INEXT,ICNT
      INTEGER  IHIST (*)
      LOGICAL  LPRT
      DATA  LPRT / .FALSE. /

      IFIND = 0
      ICNT = 1
      INEXT = IDAUP
      IF (LPRT) WRITE (6,FMT='('' PXDAUT: IPARP,IDAUP ='',
     +    2I8)') IPARP,IDAUP
 100  INX = IHIST (INEXT)
          IF (LPRT) WRITE (6,FMT='('' ICNT,INX ='',2I8)') ICNT,INX
          IF (INX.LT.IPARP) GO TO 990
          IF (INX.EQ.IPARP) THEN
              IFIND = 1
              GO TO 990
          END IF
          ICNT = ICNT + 1
          IF (ICNT.GT.MXCNT) THEN
              IFIND = -1
              WRITE (6,FMT='('' PXDAUT: Error, Maximum traceback'',
     +            '' count exceeded'')')
              GO TO 990
          END IF
          INEXT = INX
      GO TO 100

 990  RETURN
      END
CDECK  ID>, PXDOTV.
      SUBROUTINE PXDOTV (ISIZ,VEC1,VEC2,DOTP)
*.*********************************************************
*. ------
*. PXDOTV
*. ------
*. SOURCE: J.W.Gary
*. Calculate the dot product between two vectors of
*. arbitrary length
*. Usage     :
*.
*.      INTEGER  NDIM
*.      PARAMETER  (NDIM=1.or.more)
*.      REAL  VEC1 (NDIM.or.more),
*.     +      VEC2 (NDIM.or.more)
*.      REAL  DOTP
*.      INTEGER  ISIZ
*.
*.      ISIZ = 1.to.NDIM
*.      CALL PXDOTV (ISIZ,VEC1,VEC2,DOTP)
*.
*. INPUT     : ISIZ    The length of the vector
*. INPUT     : VEC1    The first vector
*. INPUT     : VEC2    The second vector
*. OUTPUT    : DOTP    The vector dot product,
*.                            --->   --->
*.                     DOTP = VEC1 . VEC2
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  ISIZ,IX
      REAL  VEC1 (*),VEC2 (*)
      REAL  DOTP
      DOUBLE PRECISION  AX

      AX = 0D0
      DO 120  IX = 1,ISIZ
          AX = AX + VEC1 (IX) * VEC2 (IX)
 120  CONTINUE
      DOTP = AX

      RETURN
      END
CDECK  ID>, PXDOT4.
      SUBROUTINE PXDOT4 (VEC1,VEC2,DOT4)
*.*********************************************************
*. ------
*. PXDOT4
*. ------
*. SOURCE: VECSUB (V. Blobel)
*. Calculate the invariant 4-vector dot product of two
*. 4-momenta.
*. Usage     :
*.
*.      REAL  VEC1 (4.or.more),
*.     +      VEC2 (4.or.more)
*.      REAL  DOT4
*.
*.      CALL PXDOT4 (VEC1,VEC2,DOT4)
*.
*. INPUT     : VEC1    The first 4-vector
*. INPUT     : VEC2    The second 4-vector
*. OUTPUT    : DOT4    The 4-vector dot product,
*.                       DOT4 =  VEC1(4) * VEC2(4)
*.                       - [Sum_i (VEC1(i) * VEC2(i))],i=1,3
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  IX
      REAL  VEC1 (*),VEC2 (*)
      REAL  DOT4
      DOUBLE PRECISION  AX
      AX =  VEC1 (4) * VEC2 (4)
      DO 120 IX = 1,3
          AX = AX - VEC1 (IX) * VEC2 (IX)
 120  CONTINUE
      DOT4 = AX
      RETURN
      END
CDECK  ID>, PXHEM4.
      SUBROUTINE PXHEM4 (NTRAK,ITKDM,PTRAK,AXIS,PHEM,IPHEM,IHMUL)
*.*********************************************************
*. ------
*. PXHEM4
*. ------
*. SOURCE: J.W.Gary
*. Divide the 4-momenta of an event into two hemispheres
*. defined by the plane perpendicular to the direction "AXIS"
*. Usage     :
*.
*.      INTEGER  ITKDM,MXTRAK
*.      PARAMETER  (ITKDM=4.or.more,MXTRAK=1.or.more)
*.      INTEGER NTRAK
*.      REAL  PTRAK (ITKDM,MXTRAK),
*.     +      AXIS (3.or.more),
*.     +      PHEM (5,2.or.more),
*.      INTEGER  IPHEM (MXTRAK),
*.     +         IHMUL (2.or.more)
*.
*.      ... define AXIS, e.g. = principal sphericity axis
*.
*.      CALL PXHEM4 (NTRAK,ITKDM,PTRAK,AXIS,PHEM,IPHEM,IHMUL)
*.
*. INPUT     : NTRAK     The number of tracks
*. INPUT     : ITKDM     First dimension of PTRAK
*. INPUT     : PTRAK     The track momentum array
*. INPUT     : AXIS      The direction which defines the hemispheres
*. OUTPUT    : PHEM(*,i) Summed 4-momentum in hemisphere i
*. OUTPUT    : IPHEM(i)  Particle i is in hemisphere IPHEM (i)
*. OUTPUT    : IHMUL(j)  The multiplicity of hemisphere j
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  IPHEM (*),IHMUL (*)
      INTEGER  NTRAK,ITKDM,IP,IX,IH
      REAL  PTRAK (ITKDM,*),AXIS (*),PHEM (5,*)
      REAL  DOTP
      DOUBLE PRECISION  HSUM (4,2)
      CALL PXZERV (16,HSUM)
      CALL PXZERV (2,IHMUL)
      DO 120  IP = 1,NTRAK
          CALL PXDOTV (3,PTRAK (1,IP),AXIS,DOTP)
          IH = 1
          IF (DOTP.LT.0) IH = 2
          IPHEM (IP) = IH
          IHMUL (IH) = IHMUL (IH) + 1
          DO 110 IX = 1,4
              HSUM (IX,IH) = HSUM (IX,IH) + PTRAK (IX,IP)
 110      CONTINUE
 120  CONTINUE
      DO  220 IH = 1,2
          DO 210 IX = 1,4
              PHEM (IX,IH) = HSUM (IX,IH)
 210      CONTINUE
 220  CONTINUE
      RETURN
      END
CDECK  ID>, PXICNT.
      SUBROUTINE PXICNT (COPT,ICNT)
*.*********************************************************
*. ------
*. PXICNT
*. ------
*. SOURCE: J.W.Gary
*. Counting routine, used e.g. to keep track of event
*. number between different subroutines without need
*. for a common block
*. Usage     :
*.
*.      PROGRAM MAIN
*.      INTEGER  ICNT
*.      CALL PXICNT ('Z',ICNT)
*.      DO 180 IEVT = 1,NREVT
*.*       increment event count
*.*       --------- ----- -----
*.          CALL PXICNT ('+',ICNT)
*.          CALL SUBR
*. 180  CONTINUE
*.      STOP
*.      END
*.
*.      SUBROUTINE SUBR
*.*   retreive event count
*.*   -------- ----- -----
*.      CALL PXICNT (' ',ICNT)
*.      IF (ICNT.LE.10) WRITE (6,FMT='(...
*.      RETURN
*.      END
*.
*. INPUT     : COPT Counting option
*.              = 'Z' : Zero counter ICNT
*.              = '+' : Increment counter ICNT by one
*.              = ' ' : Retreive counter ICNT,
*.                      e.g. find out current event number
*. OUTPUT    : ICNT The count number
*.
*.*********************************************************
      IMPLICIT NONE
      CHARACTER*1  COPT
      INTEGER  ICNT,IIN
      SAVE IIN
      DATA  IIN / 0 /
      IF (COPT.EQ.'+') THEN
          IIN = IIN + 1
      ELSE IF (COPT.EQ.'Z') THEN
          IIN = 0
      END IF
      ICNT = IIN
      RETURN
      END
CDECK  ID>, PXJ7PD.
      SUBROUTINE PXJ7PD (IDIN,IDOUT,CHAR)
*.*********************************************************
*. ------
*. PXJ7PD
*. ------
*. SOURCE: J.W.Gary
*. Routine to convert Jetset72 particle ID codes to the (published)
*. PDG ID codes (these are unfortunately not completely the same
*. because of ambiguities which were not sorted out properly at an
*. early stage in the PDG ID code history).
*. The differences occur for heavy quark cascade baryon states,
*. i.e. is the lambda-like state 4232 or is this the Sigma0-like
*. state. This routine is valid for hadrons up to those containing
*. top quarks, not for higher flavor generations.
*.
*. Note: Jetset and Cojets use the Jetset(7.3) ID codes;
*.       Herwig and Eurodec use the published PDG codes.
*. Usage     :
*.
*.      INTEGER  IPXJ7P,IDIN,IDOUT,IDPDG,IDJET
*.
*.      IDIN = IDPDG
*.      IDOUT = IPXJ7P (IDIN,'J')
*.      IDJET = IDOUT
*.
*. INPUT     : IDIN    The Jetset or PDG ID code
*. OUTPUT    : IDOUT   The PDG or Jetset ID code
*. CONTROL   : CHAR    = 'J' if IDOUT is the Jetset ID
*.                     = ' ' if IDOUT is the PDG ID
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  NXCONV
      PARAMETER  (NXCONV=26)
      INTEGER  IJXIDS (NXCONV),IPXIDS (NXCONV)
      INTEGER  IDIN,IDOUT,IPOS
      CHARACTER*1 CHAR
      SAVE  IJXIDS,IPXIDS
      DATA  IJXIDS /
     +      4232,4322,4132,4312,5232,5322,5132,5312,5242,5422,
     +      5142,5412,5342,5432,6232,6322,6132,6312,6242,6422,
     +      6142,6412,6342,6432,30443,20443 /
      DATA  IPXIDS /
     +      4322,4232,4312,4132,5322,5232,5312,5132,5422,5242,
     +      5412,5142,5432,5342,6322,6232,6312,6132,6422,6242,
     +      6412,6142,6432,6342,20443,10443 /

      IF (CHAR.EQ.'J') THEN
         CALL PXPOSI (IABS (IDIN),NXCONV,IPXIDS,IPOS)
         IF (IPOS.EQ.-1) THEN
            IDOUT = IDIN
         ELSE
            IDOUT = IJXIDS (IPOS) * ISIGN (1,IDIN)
         END IF
      ELSE
         CALL PXPOSI (IABS (IDIN),NXCONV,IJXIDS,IPOS)
         IF (IPOS.EQ.-1) THEN
            IDOUT = IDIN
         ELSE
            IDOUT = IPXIDS (IPOS) * ISIGN (1,IDIN)
         END IF
      END IF

      RETURN
      END
CDECK  ID>, PXJMMM.
      SUBROUTINE PXJMMM(NTRAK,ITKDM,PTRAK,TVEC,AMH,AML,IERR)
*.*********************************************************
*. ------
*. PXJMMM
*. ------
*. SOURCE:  D.R.Ward
*. Calculate Heavy and light jet masses using Min(M**2) method
*. Usage     :
*.
*.      INTEGER  NTRAK,ITKDM,IERR,MXTRK
*.      PARAMETER (ITKDM=4.or.more,MXTRK=1.or.more)
*.      REAL PTRAK (ITKDM,MXTRK),TVEC (3),AMH,AML
*.
*.      CALL PXJMMM (NTRAK,ITKDM,PTRAK,TVEC,AMH,AML,IERR)
*.
*. INPUT     : NTRAK      Number of tracks
*. INPUT     : ITKDM      First dimension of PTRAK array
*. INPUT     : PTRAK      Array of  4-momenta (Px,Py,Pz,E)
*. INPUT     : TVEC       Vector defining the Thrust axis.
*. OUTPUT    : AMH        Invariant mass of heavy hemisphere
*. OUTPUT    : AML        Invariant mass of light hemisphere
*. OUTPUT    : IERR       = 0 if all is OK ;   = -1 otherwise
*.
*. Modification Log.
*. 12-May-97 D. Chrisman, remove declaration of unused variables
*.             AMH0 and AML0.
*.
*.*********************************************************
      IMPLICIT NONE
*
      INTEGER NTRAK,IERR,I,J,K,NN,JBIT,NNMAXX,ITKDM
      EXTERNAL JBIT
      REAL    PTRAK(ITKDM,*),AMH,AML,PHEM(4,2),CTH,TVEC(*),TMOD,PTOT
      REAL    CTHCUT,PH0(4,2),SUMMIN,SUM,PP(4,99),SAVE
*
      AMH=0.
      AML=0.
      IERR=0
*
*--   To avoid wasting too much cpu time, we assume that
*--   particles lying within cones defined by CTHCUT about
*--   the thrust axis can be unambiguously assigned to one
*--   or the other group.  We then consider all possible
*--   ways of permuting the central particles with the two
*--   main groups.  If the number of central particles is
*--   greater than NNMAXX then we enlarge the cones slightly.
*--   These two parameters could be adjusted, but it doesn't
*--   make any significant difference.
*
      CTHCUT=0.7
      NNMAXX=10
*
      IF(NTRAK.LE.0) THEN
         WRITE(6,FMT='('' PXJMMM: ERROR,NTRAK=0 '')')
         IERR=-1
         GO TO 99
      ENDIF
*
      TMOD=SQRT(TVEC(1)**2+TVEC(2)**2+TVEC(3)**2)
 220  CALL PXZERV (8,PH0)
      NN=0
      DO 211 I=1,NTRAK
         CTH=TVEC(1)*PTRAK(1,I)+TVEC(2)*PTRAK(2,I)+TVEC(3)*PTRAK(3,I)
         PTOT=SQRT(PTRAK(1,I)**2+PTRAK(2,I)**2+PTRAK(3,I)**2)
         CTH=CTH/(TMOD*PTOT)

         IF(CTH.GT.CTHCUT) THEN
            PH0(1,1)=PH0(1,1)+PTRAK(1,I)
            PH0(2,1)=PH0(2,1)+PTRAK(2,I)
            PH0(3,1)=PH0(3,1)+PTRAK(3,I)
            PH0(4,1)=PH0(4,1)+PTRAK(4,I)
         ELSEIF(CTH.LT.-CTHCUT) THEN
            PH0(1,2)=PH0(1,2)+PTRAK(1,I)
            PH0(2,2)=PH0(2,2)+PTRAK(2,I)
            PH0(3,2)=PH0(3,2)+PTRAK(3,I)
            PH0(4,2)=PH0(4,2)+PTRAK(4,I)
         ELSE
            NN=NN+1
            IF(NN.GT.NNMAXX) THEN
              WRITE(6,FMT='('' PXJMMM:Too many central particles
     +                           -- cutting '')')
               CTHCUT=CTHCUT-0.1
               NNMAXX=NNMAXX+1
               GO TO 220
            ENDIF
            PP(1,NN)=PTRAK(1,I)
            PP(2,NN)=PTRAK(2,I)
            PP(3,NN)=PTRAK(3,I)
            PP(4,NN)=PTRAK(4,I)
         ENDIF
  211 CONTINUE
      IF(NN.EQ.0) THEN
         AMH=SQRT(ABS(PH0(4,1)**2-PH0(1,1)**2-
     +                PH0(2,1)**2-PH0(3,1)**2))
         AML=SQRT(ABS(PH0(4,2)**2-PH0(1,2)**2-
     +                PH0(2,2)**2-PH0(3,2)**2))
         GO TO 98
      ENDIF
      SUMMIN=1.E20
      DO 111 I=0,-1+2**NN
         CALL PXCOPV (8,PH0,PHEM)
         DO 112 J=1,NN
            K=JBIT(I,J)+1
            PHEM(1,K)=PHEM(1,K)+PP(1,J)
            PHEM(2,K)=PHEM(2,K)+PP(2,J)
            PHEM(3,K)=PHEM(3,K)+PP(3,J)
            PHEM(4,K)=PHEM(4,K)+PP(4,J)
 112     CONTINUE
         SUM=PHEM(4,1)**2-PHEM(1,1)**2-PHEM(2,1)**2-PHEM(3,1)**2
     +      +PHEM(4,2)**2-PHEM(1,2)**2-PHEM(2,2)**2-PHEM(3,2)**2
         IF(SUM.LT.SUMMIN) THEN
            SUMMIN=SUM
            AMH=SQRT(ABS(PHEM(4,1)**2-PHEM(1,1)**2-
     +                   PHEM(2,1)**2-PHEM(3,1)**2))
            AML=SQRT(ABS(PHEM(4,2)**2-PHEM(1,2)**2-
     +                   PHEM(2,2)**2-PHEM(3,2)**2))
         ENDIF
 111  CONTINUE
  98  IF(AML.GT.AMH) THEN
         SAVE=AMH
         AMH=AML
         AML=SAVE
      ENDIF
*
      RETURN
  99  END
CDECK  ID>, PXJPDG.
      SUBROUTINE PXJPDG (IDJT63,IDPDG)
*.*********************************************************
*. ------
*. PXJPDG
*. ------
*. SOURCE:  S.L.Lloyd
*. Convert a JETSET63 ID code to a JETSET73 ID Code
*. (A JETSET73 ID code is almost, but not quite the same as
*. a Particle Data Group ID code, see the routine PXJ7PD
*. for the particles which are different)
*. Usage     :
*.
*.      INTEGER  IDJT63,IDPDG
*.      CALL PXJPDG (IDJT63,IDPDG)
*.
*. INPUT     : IDJT63  Particle ID code, JETSET63 format
*. OUTPUT    : IDPDG   Particle ID code, JETSET73 format
*.
*. Modification Log.
*. 06-Jun-89  Adapt to PX environment, add (u,d,s) diquarks J.W.Gary
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  ICODE,JSIGN,IDJT63,IDPDG
      INTEGER IPDGJ(500:508),IPDG1(90),IPDG2(9),IPDG3(9),IPDG4(34),
     +        IPDG5(16),IPDG6(36),IPDDQ1(511:513),IPDDQ2(521:523),
     +        IPDDQ3(531:533)
      DATA IPDGJ/  21, 2, 1, 3, 4, 5, 6, 7, 8 /
      DATA IPDG1/  22,  23,  24,  25,   0,   0,  11,  12,  13,  14,
     +             15,  16,  17,  18,   0,   0, 211, 321, 311, 421,
     +            411, 431, 111, 221, 331, 441, 213, 323, 313, 423,
     +            413, 433, 113, 223, 333, 443, 310, 130,   0,   0,
     +           2212,2112,3222,3212,3112,3322,3312,4222,4212,4112,
     +           4322,4312,4332,4422,4412,4432,3122,4122,4232,4132,
     +           2224,2214,2114,1114,3224,3214,3114,3324,3314,3334,
     +           4224,4214,4114,4324,4314,4334,4424,4414,4434,4444,
     +              0,   0, 551, 661,   0,   0, 553, 663,   0,   0/
      DATA IPDG2/-521,-511,-531,-541, 621, 611, 631, 641, 651/
      DATA IPDG3/-523,-513,-533,-543, 623, 613, 633, 643, 653/
      DATA IPDG4/5222,5212,5112,5322,5312,5332,5422,5412,5432,5442,
     +           5522,5512,5532,5542,6222,6212,6112,6322,6312,6332,
     +           6422,6412,6432,6442,6522,6512,6532,6542,6552,6622,
     +           6612,6632,6642,6652/
      DATA IPDG5/5122,5232,5132,5422,5412,5432,6122,6232,6132,6422,
     +           6412,6432,6522,6512,6532,6542/
      DATA IPDG6/5224,5214,5114,5324,5314,5334,5424,5414,5434,5444,
     +           5524,5514,5534,5544,5554,6224,6214,6114,6324,6314,
     +           6334,6424,6414,6434,6444,6524,6514,6534,6544,6554,
     +           6624,6614,6634,6644,6654,6664/
      DATA IPDDQ1/2203,2101,3201/
      DATA IPDDQ2/2103,1103,3101/
      DATA IPDDQ3/3203,3103,3303/

      ICODE = ABS (IDJT63)
      JSIGN = SIGN (1,IDJT63)
      IF (ICODE.GE.1.AND.ICODE.LE.90) THEN
         IDPDG = JSIGN * IPDG1 (ICODE)
      ELSE IF (ICODE.GE.101.AND.ICODE.LE.109) THEN
         IDPDG = JSIGN * IPDG2 (ICODE-100)
      ELSE IF (ICODE.GE.123.AND.ICODE.LE.131) THEN
         IDPDG = JSIGN * IPDG3 (ICODE-122)
      ELSE IF (ICODE.GE.145.AND.ICODE.LE.178) THEN
         IDPDG = JSIGN * IPDG4(ICODE-144)
      ELSE IF (ICODE.GE.241.AND.ICODE.LE.256) THEN
         IDPDG = JSIGN * IPDG5 (ICODE-240)
      ELSE IF (ICODE.GE.293.AND.ICODE.LE.328) THEN
         IDPDG = JSIGN * IPDG6 (ICODE-292)
      ELSE IF (ICODE.GE.500.AND.ICODE.LE.508) THEN
         IDPDG = JSIGN * IPDGJ (ICODE)
      ELSE IF (ICODE.GE.511.AND.ICODE.LE.513) THEN
         IDPDG = JSIGN * IPDDQ1 (ICODE)
      ELSE IF (ICODE.GE.521.AND.ICODE.LE.523) THEN
         IDPDG = JSIGN * IPDDQ2 (ICODE)
      ELSE IF (ICODE.GE.531.AND.ICODE.LE.533) THEN
         IDPDG = JSIGN * IPDDQ3 (ICODE)
      ELSE
         WRITE (6,FMT='('' PXJPDG: Unknown Jetset particle code '',
     +     I8)') IDJT63
         IDPDG = 0
      ENDIF

      RETURN
      END
CDECK  ID>, PXLRP5.
      SUBROUTINE PXLRP5 (PMOM,RAPY,IERR)
*.*********************************************************
*. ------
*. PXLRP5
*. ------
*. SOURCE: HERWIG (B.Webber,G.Marchesini)
*. Longitudinal Rapidity (set to +-1000 if too large)
*. Usage     :
*.
*.      INTEGER  IERR
*.      REAL  PMOM (5.or.more)
*.      REAL  RAPY
*.
*.      CALL PXLRP5 (PMOM,RAPY,IERR)
*.
*. INPUT     : PMOM   Particle 5-momentum (Px,Py,Pz,E,M)
*. OUTPUT    : RAPY   The longitudinal rapidity
*.                    = 0.5*LOG((Pz + E)**2 / (E**2 - M**2))
*. OUTPUT    : IERR    = 0 if all is OK ;   = -1 otherwise
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  IERR
      REAL  PMOM (*)
      REAL  RAPY
      DOUBLE PRECISION  EMT2,EL2
      IERR = 0
      EMT2 = PMOM (1)**2 + PMOM (2)**2 + PMOM (5)**2
      IF (PMOM (3).GT.0.) THEN
          IF (EMT2.EQ.0.) THEN
              IERR = -1
              RAPY = 1000.
          ELSE
              EL2 = (PMOM (3) + PMOM (4))**2
              RAPY = 0.5 * DLOG (EL2 / EMT2)
          ENDIF
      ELSEIF (PMOM (3).LT.0.) THEN
          IF (EMT2.EQ.0.) THEN
              IERR = -1
              RAPY = -1000.
          ELSE
              EL2 = (PMOM (3) - PMOM (4))**2
              RAPY = -0.5 * DLOG (EL2 / EMT2)
          ENDIF
      ELSE
          RAPY=0.
      ENDIF
      END
CDECK  ID>, PXLZB5.
      SUBROUTINE PXLZB5 (PS,PI,PF)
*.*********************************************************
*. ------
*. PXLZB5
*. ------
*. SOURCE: HERWIG (B.Webber,G.Marchesini)
*. Lorentz boost of a particle;
*. transforms PI (given in the rest frame of PS)
*. into PF (the momentum of PI boosted to the frame
*. in which PS is given).
*. Usage     :
*.
*.      REAL  PS (5.or.more),
*.     +      PI (5.or.more),
*.     +      PF (5.or.more)
*.
*.      CALL PXLZB5 (PS,PI,PF)
*.
*. INPUT     : PS   Reference vector
*. INPUT     : PI   Particle 5-momentum (Px,Py,Pz,E,M)
*. OUTPUT    : PF   The transformed 5-momentum
*.
*.*********************************************************
      IMPLICIT NONE
      DOUBLE PRECISION  FN,PF4
      REAL PS (*),PI (*),PF (*)
      IF (PS (4).EQ.PS (5)) THEN
        PF (1) = PI (1)
        PF (2) = PI (2)
        PF (3) = PI (3)
        PF (4) = PI (4)
      ELSE
        PF4 = (PI (1) * PS (1) + PI (2) * PS (2)
     +       + PI (3) * PS (3) + PI (4) * PS (4))
     +       / PS (5)
        FN  = (PF4 + PI (4)) / (PS (4) + PS (5))
        PF (1) = PI (1) + FN * PS (1)
        PF (2) = PI (2) + FN * PS (2)
        PF (3) = PI (3) + FN * PS (3)
        PF (4) = PF4
      END IF
      PF (5) = PI (5)
      RETURN
      END
CDECK  ID>, PXLZF5.
      SUBROUTINE PXLZF5 (PS,PI,PF)
*.*********************************************************
*. ------
*. PXLZF5
*. ------
*. SOURCE: HERWIG (B.Webber,G.Marchesini)
*. Lorentz boost of a particle;
*. transforms PI (given in the same frame as PS) into PF
*. (the momentum of PI boosted to the rest frame of PS).
*. Usage     :
*.
*.      REAL  PS (5.or.more),
*.     +      PI (5.or.more),
*.     +      PF (5.or.more)
*.
*.      CALL PXLZF5 (PS,PI,PF)
*.
*. INPUT     : PS   Reference vector
*. INPUT     : PI   Particle 5-momentum (Px,Py,Pz,E,M)
*. OUTPUT    : PF   The transformed 5-momentum
*.
*.*********************************************************
      IMPLICIT NONE
      REAL PS (*),PI (*),PF (*)
      DOUBLE PRECISION  PF4,FN
      IF (PS (4).EQ.PS (5)) THEN
        PF (1) = PI (1)
        PF (2) = PI (2)
        PF (3) = PI (3)
        PF (4) = PI (4)
      ELSE
        PF4 = (PI (4 )* PS (4) - PI (3) * PS (3)
     +       - PI (2) * PS (2) - PI (1) * PS (1))
     +       / PS (5)
        FN = (PF4 + PI (4)) / (PS (4) + PS (5))
        PF (1) = PI (1) - FN * PS (1)
        PF (2) = PI (2) - FN * PS (2)
        PF (3) = PI (3) - FN * PS (3)
        PF (4) = PF4
      END IF
      PF (5) = PI (5)
      RETURN
      END
CDECK  ID>, PXMAGV.
      SUBROUTINE PXMAGV (ISIZ,VEC,XMAG)
*.*********************************************************
*. ------
*. PXMAGV
*. ------
*. SOURCE: J.W.Gary
*. Calculate the magnitude of a vector of arbitrary length
*. Usage     :
*.
*.     INTEGER  NDIM
*.     PARAMETER  (NDIM=1.or.more)
*.     REAL  VEC (NDIM.or.more)
*.     REAL  XMAG
*.     INTEGER  ISIZ
*.
*.     ISIZ = 1.to.NDIM
*.     CALL PXMAGV (ISIZ,VEC,XMAG)
*.
*. INPUT     : ISIZ    The length of the vector
*. INPUT     : VEC     The vector
*. OUTPUT    : XMAG    The magnitude of the vector
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  ISIZ,IX
      REAL  VEC (*)
      REAL  XMAG
      DOUBLE PRECISION  AX,BX
      AX = 0.0
      DO 120 IX = 1,ISIZ
          AX = AX + VEC (IX) * VEC (IX)
 120  CONTINUE
      BX = DSQRT (AX)
      XMAG = BX
      RETURN
      END
CDECK  ID>, PXMAS4.
      SUBROUTINE PXMAS4 (PMOM,XMAS)
*.*********************************************************
*. ------
*. PXMAS4
*. ------
*. SOURCE: HERWIG (B.Webber,G.Marchesini)
*. Calculate the invariant mass of a 4-vector
*. (negative if spacelike)
*. Usage     :
*.
*.      REAL  PMOM (4.or.more)
*.      REAL  XMAS
*.
*.      CALL PXMAS4 (PMOM,XMAS)
*.
*. INPUT     : PMOM   Particle 4-momentum (Px,Py,Pz,E)
*. OUTPUT    : XMAS   The invariant mass
*.
*.*********************************************************
      IMPLICIT NONE
      REAL  PMOM (*)
      REAL  XMAS2,XMAS
      XMAS2 = ((PMOM (4) + PMOM (3)) * (PMOM (4) - PMOM (3))
     +        - PMOM (1)**2 - PMOM(2)**2)
      CALL PXROOT (XMAS2,XMAS)
      RETURN
      END
CDECK  ID>, PXMIS4.
      SUBROUTINE PXMIS4 (NTRAK,ITKDM,PTRAK,PMISS)
*.*********************************************************
*. ------
*. PXMIS4
*. ------
*. SOURCE: J.W.Gary
*. Routine to calculate the missing momentum in an event
*. Usage     :
*.
*.      INTEGER  ITKDM,MXTRK
*.      PARAMETER  (ITKDM=4.or.more,MXTRK=1.or.more)
*.      INTEGER  NTRAK
*.      REAL  PTRAK (ITKDM,MXTRK),PMISS (4.or.more)
*.
*.      NTRAK = 1.to.MXTRK
*.      CALL PXMIS4 (NTRAK,ITKDM,PTRAK,PMISS)
*.
*. INPUT     : NTRAK   Total number of particles
*. INPUT     : ITKDM   First dimension of PTRAK
*. INPUT     : PTRAK   Particle 4-momentum (Px,Py,Pz,E)
*. OUTPUT    : PMISS   Missing momentum vector in first 3 components;
*.                     total visible energy in 4th component
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  NTRAK,ITKDM,IP,IX
      REAL  PTRAK (ITKDM,*),PMISS (*)

      CALL PXZERV (4,PMISS)
      DO 160 IP = 1,NTRAK
          CALL PXADDV (4,PTRAK (1,IP),PMISS,PMISS)
 160  CONTINUE
      DO 110 IX = 1,3
          PMISS (IX) = - PMISS (IX)
 110  CONTINUE
      RETURN
      END
CDECK  ID>, PXMMBB.
      SUBROUTINE PXMMBB (NTRAK,ITKDM,PTRAK,TVEC,AMH,AML,
     +                   BT,BW,IERR)
*.*********************************************************
*. ------
*. PXMMBB
*. ------
*. SOURCE:  D.R.Ward
*. Calculate Heavy and light jet masses using Thrust method,
*  and also the jet broadening measures of Webber et al.
*. Usage     :
*.
*.      INTEGER  NTRAK,ITKDM,IERR,MXTRK
*.      PARAMETER (ITKDM=4.or.more,MXTRK=1.or.more)
*.      REAL PTRAK (ITKDM,MXTRK),TVEC (3),AMH,AML,BT,BW
*.
*.      CALL PXMMBB (NTRAK,ITKDM,PTRAK,TVEC,AMH,AML,BT,BW,IERR)
*.
*. INPUT     : NTRAK      Number of "tracks"
*. INPUT     : ITKDM      First dimension of PTRAK array
*. INPUT     : PTRAK      Array of  4-momenta (Px,Py,Pz,E)
*. INPUT     : TVEC       Vector defining the Thrust axis.
*. OUTPUT    : AMH        Invariant mass of heavy hemisphere/Evis
*. OUTPUT    : AML        Invariant mass of light hemisphere/Evis
*. OUTPUT    : BT         Sum of transverse energies/pvis
*. OUTPUT    : BW         Sum of transverse energies/pvis wide jet
*. OUTPUT    : IERR       = 0 if all is OK ;   = -1 otherwise
*.
*.*********************************************************
*
      IMPLICIT NONE
*
      INTEGER NTRAK,IERR,I,J,IHEM,ITKDM
      REAL    PTRAK(ITKDM,*),AMH,AML,PHEM(4,2),CTH,TVEC(*),
     +        SAVE,BB(2),BT,BW,SUMP,PL,PT
*
      AMH=0.
      AML=0.
      IERR=0
*
      IF(NTRAK.LE.0) THEN
         WRITE (6,FMT='('' PXMMBB: Error, NTRAK=0 '')')
         IERR=-1
         GO TO 99
      ENDIF
*
      CALL PXZERV (8,PHEM)
      CALL PXZERV (2,BB)
      SUMP=0.
      DO 211 I=1,NTRAK
         CTH=TVEC(1)*PTRAK(1,I)+TVEC(2)*PTRAK(2,I)+TVEC(3)*PTRAK(3,I)
         IHEM=1
         IF(CTH.LT.0) IHEM=2
         DO 212 J=1,4
            PHEM(J,IHEM)=PHEM(J,IHEM)+PTRAK(J,I)
  212    CONTINUE
         CALL PXPLT3(PTRAK(1,I),TVEC,PL,PT,IERR)
         BB(IHEM)=BB(IHEM)+PT
         SUMP=SUMP+SQRT(PL**2+PT**2)
*
  211 CONTINUE
*
      AMH=SQRT(ABS(PHEM(4,1)**2-PHEM(1,1)**2-PHEM(2,1)**2-PHEM(3,1)**2))
      AML=SQRT(ABS(PHEM(4,2)**2-PHEM(1,2)**2-PHEM(2,2)**2-PHEM(3,2)**2))
      IF(AML.GT.AMH) THEN
         SAVE=AMH
         AMH=AML
         AML=SAVE
      ENDIF
      AMH=AMH/(PHEM(4,1)+PHEM(4,2))
      AML=AML/(PHEM(4,1)+PHEM(4,2))
      BT=(BB(1)+BB(2))*0.5/SUMP
      BW=MAX(BB(1),BB(2))*0.5/SUMP
*
  99  RETURN
      END
CDECK  ID>, PXNORV.
      SUBROUTINE PXNORV (ISIZ,VEC,VNOR,IERR)
*.*********************************************************
*. ------
*. PXNORV
*. ------
*. SOURCE: J.W.Gary
*. Normalize a vector of arbitrary length
*. Usage     :
*.
*.      INTEGER  NDIM
*.      PARAMETER  (NDIM=1.or.more)
*.      REAL  VEC (NDIM.or.more)
*.      REAL  VNOR
*.      INTEGER  IERR,ISIZ
*.
*.      ISIZ = 1.to.NDIM
*.      CALL PXNORV (ISIZ,VEC,VNOR,IERR)
*.
*. INPUT     : ISIZ    The length of the vector
*. INPUT     : VEC     The vector
*. OUTPUT    : VNOR    The normalized vector
*. OUTPUT    : IERR    = 0 if all is OK ;   = -1 otherwise
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  ISIZ,IX,IERR
      REAL  VEC (*),VNOR (*)
      DOUBLE PRECISION  AX,BX
      IERR = 0
      AX = 0.0
      DO 120  IX = 1,ISIZ
          AX = AX + VEC (IX) * VEC (IX)
 120  CONTINUE
      BX = DSQRT (AX)
      IF (BX.NE.0.0) THEN
          BX = 1.0 / BX
      ELSE
          IERR = -1
          RETURN
      END IF
      DO 140 IX = 1,ISIZ
          VNOR (IX) = BX * VEC (IX)
 140  CONTINUE
      RETURN
      END
CDECK  ID>, PXPAX3.
      SUBROUTINE PXPAX3 (NTRAK,ITKDM,PTRAK,AXIS,SPROJ,COPT)
*.*********************************************************
*. ------
*. PXPAX3
*. ------
*. SOURCE: J.W.Gary
*. Calculate the total event momentum projected along
*. a certain axis
*. Usage     :
*.
*.      INTEGER  ITKDM,MXTRK
*.      PARAMETER  (ITKDM=4.or.more,MXTRK=1.or.more)
*.      INTEGER NTRAK
*.      REAL  PTRAK (ITKDM,MXTRK),
*.     +      AXIS (3.or.more)
*.      REAL  SPROJ
*.      CHARACTER*1  COPT
*.
*.      ... define AXIS, e.g. = principal sphericity axis
*.
*.      COPT = 'A'
*.      NTRAK = 1.to.MXTRK
*.      CALL PXPAX3 (NTRAK,ITKDM,PTRAK,AXIS,SPROJ,COPT)
*.
*. INPUT     : NTRAK     The number of tracks
*. INPUT     : ITKDM     First dimension of PTRAK
*. INPUT     : PTRAK     The track momentum array
*. INPUT     : AXIS      The NORMALIZED axis
*. OUTPUT    : SPROJ     The total projected momentum
*. CONTROL   : COPT      = 'A': sum absolute values of
*.                              projected momenta
*.                       = ' ': sum values keeping sign (+ or -)
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  NTRAK,ITKDM,IP,IX
      REAL  PTRAK (ITKDM,*),AXIS (*)
      REAL  SPROJ
      DOUBLE PRECISION  XPR,DPROJ
      CHARACTER*1  COPT
      DPROJ = 0.D0
      DO 120  IP = 1,NTRAK
          XPR = 0D0
          DO 110  IX = 1,3
              XPR = XPR + PTRAK (IX,IP) * AXIS (IX)
 110      CONTINUE
          IF (COPT.EQ.'A') THEN
              DPROJ = DPROJ + ABS (XPR)
          ELSE
              DPROJ = DPROJ + XPR
          END IF
 120  CONTINUE
      SPROJ = DPROJ
      RETURN
      END
CDECK  ID>, PXPLT3.
      SUBROUTINE PXPLT3 (VEC1,VEC2,PPL,PPT,IERR)
*.*********************************************************
*. ------
*. PXPLT3
*. ------
*. SOURCE: VECSUB (V. Blobel)
*. calculate the magnitude of the component of VEC1
*. parallel to VEC2 (=PPL) and the magnitude of the
*. component of VEC1 perpendicular to VEC2 (=PPT)
*. Usage     :
*.
*.      REAL  VEC1 (3.or.more),
*.     +      VEC2 (3.or.more)
*.      REAL  PPL,PPT
*.      INTEGER  IERR
*.
*.      CALL PXPLT3 (VEC1,VEC2,PPL,PPT,IERR)
*.
*. INPUT     : VEC1    The vector whose components are to
*.                     be calculated
*. INPUT     : VEC2    The reference vector
*. OUTPUT    : PPL     The parallel component of VEC1
*. OUTPUT    : PPT     The perpendicular component of VEC1
*. OUTPUT    : IERR    = 0 if all is OK ;   = -1 otherwise
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  IX,IERR
      REAL  VEC1 (*),VEC2 (*)
      REAL  PPL,PPT
      DOUBLE PRECISION  BX,CX,DX,EX,GX (3)
      IERR = 0
      BX = 0D0
      CX = 0D0
      DO 120  IX = 1,3
          BX = BX + VEC2 (IX) * VEC2 (IX)
          CX = CX + VEC1 (IX) * VEC2 (IX)
 120  CONTINUE
      DX = DSQRT (BX)
      GX (1) = VEC1 (2) * VEC2 (3) - VEC1 (3) * VEC2 (2)
      GX (2) = VEC1 (3) * VEC2 (1) - VEC1 (1) * VEC2 (3)
      GX (3) = VEC1 (1) * VEC2 (2) - VEC1 (2) * VEC2 (1)
      EX = DSQRT (GX (1)*GX (1) + GX (2)*GX (2) + GX (3)*GX (3))
      IF (DX.EQ.0.0) THEN
          IERR = -1
      ELSE
          PPL = CX / DX
          PPT = EX / DX
      END IF
      RETURN
      END
CDECK  ID>, PXPOIS.
      SUBROUTINE PXPOIS (NBIN,AVGVAL,POISSN)
*.*********************************************************
*. ------
*. PXPOIS
*. ------
*. SOURCE: J.W.Gary
*. Calculate the Poissonian distribution for a given mean value
*. Usage     :
*.
*.      INTEGER  MXBINS
*.      PARAMETER  (MXBINS=100)
*.      INTEGER  NBIN
*.      REAL  POISSN (MXBINS)
*.      REAL  AVGVAL
*.
*.      NBIN = 50
*.      AVGVAL = 21.4
*.      CALL PXPOIS (NBIN,AVGVAL,POISSN)
*.
*. INPUT     : NBIN    Number of bins (<= MXBINS)
*. INPUT     : AVGVAL  Average value of the distribution
*. OUTPUT    : POISSN  The Poissonian distribution
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  NBIN,IBIN
      REAL POISSN (*)
      REAL  AVGVAL,LOGAVG
      DOUBLE PRECISION  XFCTAL

      IBIN = 0
      XFCTAL = 1D0
      LOGAVG = LOG (AVGVAL)
* loop over bins
* ---- ---- ----
 100  IBIN = IBIN + 1
*    factorial value
*    --------- -----
      XFCTAL = XFCTAL * FLOAT (IBIN)
      POISSN (IBIN) = FLOAT (IBIN) * LOGAVG - DLOG (XFCTAL) - AVGVAL
      POISSN (IBIN) = 2.718281**POISSN(IBIN)
      IF (IBIN.LT.NBIN) GO TO 100

 990  RETURN
      END
CDECK  ID>, PXPOSC.
      SUBROUTINE PXPOSC (CELM,ISIZ,CARR,IPOS)
*.*********************************************************
*. ------
*. PXPOSC
*. ------
*. SOURCE: J.W.Gary
*. Locate a character element within a character array
*. Usage:
*.
*.      INTEGER  NDIM
*.      PARAMETER  (NDIM=1.or.more)
*.      INTEGER  ISIZ
*.      CHARACTER*(1.or.more) CELM,CARR (NDIM)
*.
*.      CELM = 'helpme ... '
*.      ISIZ = 1.to.NDIM
*.      CALL PXPOSC (CELM,ISIZ,CARR,IPOS)
*.
*. INPUT     : CELM    The character element
*. INPUT     : ISIZ    Number of elements in the character array
*.                     to be searched (1.to.ISIZ)
*. INPUT     : CARR    The character array
*. OUTPUT    : IPOS    Position of CELM in CARR
*.                     (=-1 if element not found)
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  ISIZ,IPOS
      CHARACTER*(*) CELM,CARR (*)
      DO 120  IPOS = 1,ISIZ
          IF (CELM.EQ.CARR (IPOS)) GO TO 990
 120  CONTINUE
      IPOS = -1
 990  RETURN
      END
CDECK  ID>, PXPOSI.
      SUBROUTINE PXPOSI (IELM,ISIZ,IARR,IPOS)
*.*********************************************************
*. ------
*. PXPOSI
*. ------
*. SOURCE: J.W.Gary
*. Locate an integer element within an integer array
*. Usage:
*.
*.      INTEGER  NDIM
*.      PARAMETER  (NDIM=1.or.more)
*.      INTEGER  ISIZ,IELM,IARR (NDIM)
*.
*.      IELM = any.integer
*.      ISIZ = 1.to.NDIM
*.      CALL PXPOSI (IELM,ISIZ,IARR,IPOS)
*.
*. INPUT     : IELM    The integer element
*. INPUT     : ISIZ    Number of elements in the integer array
*.                     to be searched (1.to.ISIZ)
*. INPUT     : IARR    The integer array
*. OUTPUT    : IPOS    Position of IELM in IARR
*.                     (=-1 if element not found)
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  IELM,ISIZ,IPOS
      INTEGER  IARR (*)
      DO 120  IPOS = 1,ISIZ
          IF (IELM.EQ.IARR (IPOS)) GO TO 990
 120  CONTINUE
      IPOS = -1
 990  RETURN
      END
CDECK  ID>, PXPRCV.
      SUBROUTINE PXPRCV (NAME,NELMT,CARR)
*.*********************************************************
*. ------
*. PXPRCV
*. ------
*. SOURCE: J.W.Gary
*. Print-out of a character vector array
*. Usage:
*.
*.      CHARACTER*6 NAME
*.      INTEGER  NELMT
*.      PARAMETER  (NELMT=1.or.more)
*.      CHARACTER*(8.or.less) CARR (NELMT)
*.      INTEGER  ISIZ
*.
*.      NAME = 'CARR  '
*.      ISIZ = 1.to.NELMT
*.      CALL PXPRCV (NAME,ISIZ,CARR)
*.
*. INPUT     : NAME    The six character name of the vector
*. INPUT     : ISIZ    The number of elements to print
*. INPUT     : CARR    The character vector array
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  NPROW
      PARAMETER  (NPROW=7)
      CHARACTER*8  CARREM (NPROW)
      INTEGER  NELMT,NROW,IR,IC,NCOL,NREM
      CHARACTER*(*)  CARR (*),NAME
      NROW =  NELMT / NPROW
      NREM = MOD (NELMT,NPROW)
      IF (NREM.NE.0) THEN
          DO 110 IC = 1,NPROW
              CARREM (IC) = '       '
              IF (IC.LE.NREM) CARREM (IC) = CARR (NROW*NPROW+IC)
 110      CONTINUE
          NROW = NROW + 1
      END IF
      NCOL = NPROW
      WRITE (6,FMT='('' Array name: '',A6)') NAME
      DO 120 IR = 1,NROW
          IF (IR.EQ.NROW.AND.NREM.NE.0) THEN
              NCOL = NREM
              WRITE (6,FMT='(I4,'':  '',7(A8,2X))')
     +          IR,(CARREM (IC),IC=1,NCOL)
          ELSE
              WRITE (6,FMT='(I4,'':  '',7(A8,2X))')
     +          IR,(CARR ((IR-1)*NPROW+IC),IC=1,NCOL)
          END IF
 120  CONTINUE
      RETURN
      END
CDECK  ID>, PXPRIQ.
      SUBROUTINE PXPRIQ (IP,NTRAK,IDS,IHIST,IQUARK)
*.*********************************************************
*. ------
*. PXPRIQ
*. ------
*. SOURCE: J.W.Gary
*. Identify whether a final-state parton in an event is
*. the primary quark or anti-quark.  Primary means that it
*. evolved directly from a quark or antiquark created in
*. e.g. Z0 decay.  Thus gluons and quarks or antiquarks
*. created through gluon splitting are not primary.
*. Usage:
*.
*.      INTEGER  MXTRK
*.      PARAMETER  (MXTRK=4000)
*.      INTEGER  IP,NTRAK,IQUARK
*.      INTEGER  IDS (MXTRK),IHIST (MXTRK)
*.
*.      ... generate an event with event generator ...
*.
*.      CALL PXPRIQ (IP,NTRAK,IDS,IHIST,IQUARK)
*.
*. INPUT     :  IP        The pointer to the final-state parton
*. INPUT     :  NTRAK     Number of entries in the event record
*. INPUT     :  IDS       Array of IDs (from generator e.g. Jetset)
*. INPUT     :  IHIST     Array of event history (from generator)
*. OUTPUT    :  IQUARK    = 1 if parton IP is a primary quark
*.                        = 0 otherwise
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  IP,NTRAK,IQUARK,IID,IPAR,INOW
      INTEGER  IDS (*),IHIST (*)

      IQUARK = 0
      IID = IABS (IDS (IP))
*  select quarks and antiquarks only
*  ------ ------ --- ---------- -----
      IF (IID.LT.0.OR.IID.GT.8) GO TO 990
      INOW = IP
 100  IPAR = IHIST (INOW)
      IF (IPAR.EQ.0) THEN
         IQUARK = 1
         GO TO 990
      END IF
      IID = IDS (IPAR)
*  primary quarks don't decay from gluons
*  ------- ------ ----- ----- ---- ------
      IF (IID.EQ.21) GO TO 990
*  but proceed through a quark chain to primary quarks
*  --- ------- ------- - ----- ----- -- ------- ------
      IF (IHIST (IPAR).EQ.0) THEN
         IQUARK = 1
         GO TO 990
      END IF
      INOW = IPAR
      GO TO 100

 990  RETURN
      END
CDECK  ID>, PXPRIV.
      SUBROUTINE PXPRIV (NAME,NELMT,IARR)
*.*********************************************************
*. ------
*. PXPRIV
*. ------
*. SOURCE: J.W.Gary
*. Print-out of an integer vector array
*. Usage:
*.
*.      CHARACTER*6 NAME
*.      INTEGER  NELMT
*.      PARAMETER  (NELMT=1.or.more)
*.      INTEGER IARR (NELMT)
*.      INTEGER  ISIZ
*.
*.      NAME = 'IARR  '
*.      ISIZ = 1.to.NELMT
*.      CALL PXPRIV (NAME,ISIZ,IARR)
*.
*. INPUT     : NAME    The six character name of the vector
*. INPUT     : ISIZ    The number of elements to print
*. INPUT     : IARR    The integer vector array
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  IARR (*),IARREM (10)
      INTEGER  NELMT,NROW,IR,IC,NCOL,NREM
      CHARACTER*(*)  NAME
      NROW =  NELMT / 10
      NREM = MOD (NELMT,10)
      IF (NREM.NE.0) THEN
          DO 110 IC = 1,10
              IARREM (IC) = 0
              IF (IC.LE.NREM) IARREM (IC) = IARR (NROW*10+IC)
 110      CONTINUE
          NROW = NROW + 1
      END IF
      NCOL = 10
      WRITE (6,FMT='('' Array name: '',A6)') NAME
      DO 120 IR = 1,NROW
          IF (IR.EQ.NROW.AND.NREM.NE.0) THEN
              NCOL = NREM
              WRITE (6,FMT='(I4,'':  '',10I6)')
     +          IR,(IARREM (IC),IC=1,NCOL)
          ELSE
              WRITE (6,FMT='(I4,'':  '',10I6)')
     +          IR,(IARR ((IR-1)*10+IC),IC=1,NCOL)
          END IF
 120  CONTINUE
      RETURN
      END
CDECK  ID>, PXPRNT.
      SUBROUTINE PXPRNT (IFST,ILST,ISZE,IPRT,ARRY,COPT)
*.*********************************************************
*. ------
*. PXPRNT
*. ------
*. SOURCE: J.W.Gary
*. Print-out of vectors from an array of vectors
*. Usage     :
*.
*.      INTEGER  ITKDM,MXTRAK
*.      PARAMETER  (ITKDM=1.or.more,MXTRAK=1.or.more)
*.      INTEGER IFST,ILST,ILEN
*.      REAL  ARRY (ITKDM,MXTRAK)
*.      CHARACTER*1  COPT
*.
*.      ... fill vectors PTRAK
*.
*.      IFST = 1.to.MXTRAK
*.      ILST = IFST.to.MXTRAK
*.      ILEN = 1.to.ITKDM
*.      COPT = '4'
*.      CALL PXPRNT (IFST,ILST,ITKDM,ILEN,ARRY,COPT)
*.
*.      ... example printout (with IFST=1,ILST=3,COPT='4')
*.
*.      Vector    Px          Py          Pz           E
*.         1 -0.1431E+00  0.2408E+00  0.2636E+00  0.4092E+00
*.         2  0.4027E+00  0.3949E+00 -0.4255E+00  0.7202E+00
*.         3 -0.1195E+00 -0.1654E+00  0.7137E-01  0.2573E+00
*.
*. INPUT     : IFST    First vector to print
*. INPUT     : ILST    Last vector to print
*. INPUT     : ITKDM   The length of each vector in the array
*. INPUT     : ILEN    The number of elements in each vector
*.                     to print (1 to ILEN)
*. INPUT     : ARRY    The array containing the vectors
*. INPUT     : COPT    Printing option
*.                       ='4' for 4-momenta
*.                       ='E' for exponential (E12.4) formatting
*.                       =' ' for "standard" (F8.2) formatting
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  IOL
      PARAMETER  (IOL=6)
      INTEGER  IFST,ILST,ISZE,IX,JX,IPRT
      REAL ARRY (ISZE,*)
      CHARACTER*1  COPT

      IF (IPRT.LT.1.OR.IPRT.GT.10) THEN
          WRITE (IOL,FMT='('' PXPRNT: Error,'',
     +      ''Array size must be between 1 and 10'')')
          RETURN
      END IF
      IF (COPT.EQ.'4') THEN
          WRITE (IOL,FMT='('' Vector'',4X,''Px'',10X,
     +           ''Py'',10X,''Pz'',10X,'' E'')')
      ELSE IF (COPT.EQ.'E') THEN
          WRITE (IOL,FMT='(:'' Vector'',I6,9(I12))')
     +          (IX,IX=1,IPRT)
      ELSE
          WRITE (IOL,FMT='(:'' Vector'',I6,9(I8))')
     +          (IX,IX=1,IPRT)
      END IF
      DO 160  JX = IFST,ILST
          IF (COPT.EQ.'4') THEN
              WRITE (IOL,FMT='(1X,I4,4E12.4)')
     +               JX,(ARRY (IX,JX),IX=1,4)
          ELSE IF (COPT.EQ.'E') THEN
              WRITE (IOL,FMT='(:I5,1X,10(E12.4))')
     +           JX,(ARRY (IX,JX),IX=1,IPRT)
          ELSE
              WRITE (IOL,FMT='(:I5,1X,10(F8.2))')
     +           JX,(ARRY (IX,JX),IX=1,IPRT)
          END IF
 160  CONTINUE
      RETURN
      END
CDECK  ID>, PXPRO3.
      SUBROUTINE PXPRO3 (AXIS,VECT,VPARL,VPERP)
*.*********************************************************
*. ------
*. PXPRO3
*. ------
*. SOURCE: J.W.Gary
*. Resolve a 3-vector into its parallel and perpendicular
*. vector components relative to a certain normalized axis vector
*. Usage:
*.
*.      REAL  AXIS  (3.or.more),
*.     +      VECT  (3.or.more),
*.     +      VPARL (3.or.more),
*.     +      VPERP (3.or.more)
*.
*.      ... define AXIS, e.g. = normalized sphericity axis
*.
*.      CALL PXPRO3 (AXIS,VECT,VPARL,VPERP)
*.
*. INPUT     : AXIS      The normalized axis vector
*. INPUT     : VECT      The 3-vector to be resolved into components
*. OUTPUT    : VPARL     The vector component of VECT
*.                       parallel to AXIS
*. OUTPUT    : VPERP     The vector component of VECT
*.                       perpendicular to AXIS
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  IX
      REAL  AXIS (*),VECT (*),VPARL (*),VPERP (*)
      DOUBLE PRECISION  DPROJ
      DPROJ = 0.D0
      DO 110  IX = 1,3
          DPROJ = DPROJ + VECT (IX) * AXIS (IX)
 110  CONTINUE
      DO 120 IX = 1,3
          VPARL (IX) = DPROJ * AXIS (IX)
          VPERP (IX) = VECT (IX) - VPARL (IX)
 120  CONTINUE
      RETURN
      END
CDECK  ID>, PXPRRV.
      SUBROUTINE PXPRRV (NAME,NELMT,ARR)
*.*********************************************************
*. ------
*. PXPRRV
*. ------
*. SOURCE: J.W.Gary
*. Print-out of a real vector array
*. Usage:
*.
*.      CHARACTER*6 NAME
*.      INTEGER  NELMT
*.      PARAMETER  (NELMT=1.or.more)
*.      REAL  ARR (NELMT)
*.      INTEGER  ISIZ
*.
*.      NAME = 'ARR   '
*.      ISIZ = 1.to.NELMT
*.      CALL PXPRRV (NAME,ISIZ,ARR)
*.
*. INPUT     : NAME    The six character name of the vector
*. INPUT     : ISIZ    The number of elements to print
*. INPUT     : ARR     The real vector array
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  NINROW
      PARAMETER  (NINROW=5)
      INTEGER  NELMT,NROW,IR,IC,NCOL,NREM
      REAL  ARR (*),ARREM (NINROW)
      CHARACTER*(*)  NAME
      NROW =  NELMT / NINROW
      NREM = MOD (NELMT,NINROW)
      IF (NREM.NE.0) THEN
          DO 110 IC = 1,NINROW
              ARREM (IC) = 0.
              IF (IC.LE.NREM) ARREM (IC) = ARR (NROW*NINROW+IC)
 110      CONTINUE
          NROW = NROW + 1
      END IF
      NCOL = NINROW
      WRITE (6,FMT='('' Array name: '',A6)') NAME
      DO 120 IR = 1,NROW
          IF (IR.EQ.NROW.AND.NREM.NE.0) THEN
              NCOL = NREM
              WRITE (6,FMT='(I4,'':  '',5E12.4)')
     +          IR,(ARREM (IC),IC=1,NCOL)
          ELSE
              WRITE (6,FMT='(I4,'':  '',5E12.4)')
     +          IR,(ARR ((IR-1)*NINROW+IC),IC=1,NCOL)
          END IF
 120  CONTINUE
      RETURN
      END
CDECK  ID>, PXQSL4.
      SUBROUTINE PXQSL4 (VEC1,VEC2,XQMIN,XQMAX)
*.*********************************************************
*. ------
*. PXQSL4
*. ------
*. SOURCE: VECSUB (V. Blobel)
*. Calculate the limits on the (momentum transfer)**2
*. Usage     :
*.
*.      REAL  VEC1 (4.or.more),
*.     +      VEC2 (4.or.more)
*.      REAL  XQMIN,XQMAX
*.
*.      CALL PXQSL4 (VEC1,VEC2,XQMIN,XQMAX)
*.
*. INPUT     : VEC1    The first 4-momentum
*. INPUT     : VEC2    The second 4-momentum
*. OUTPUT    : XQMIN   The Min.limit on (momentum transfer)**2
*. OUTPUT    : XQMAX   The Max.limit on (momentum transfer)**2
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  IX
      REAL  VEC1 (*),VEC2 (*)
      REAL  XQMIN,XQMAX
      DOUBLE PRECISION  AX,BX,CX,DX,EX
      AX = 0.0
      BX = 0.0
      DO 120  IX = 1,3
          AX = AX + VEC1 (IX) * VEC1 (IX)
          BX = BX + VEC2 (IX) * VEC2 (IX)
 120  CONTINUE
      CX = VEC1 (4) - VEC2 (4)
      CX = CX * CX
      DX = 2.0 * DSQRT (AX * BX)
      EX = AX + BX - CX
      XQMIN = EX - DX
      XQMAX = EX + DX
      RETURN
      END
CDECK  ID>, PXQSQ4.
      SUBROUTINE PXQSQ4 (VEC1,VEC2,XQ2)
*.*********************************************************
*. ------
*. PXQSQ4
*. ------
*. SOURCE: VECSUB (V. Blobel)
*. Calculate the (momentum transfer)**2 from VEC1 to VEC2
*. Usage     :
*.
*.      REAL  VEC1 (4.or.more),
*.     +      VEC2 (4.or.more)
*.      REAL  XQ2
*.
*.      CALL PXQSQ4 (VEC1,VEC2,XQ2)
*.
*. INPUT     : VEC1    The first vector
*. INPUT     : VEC2    The second vector
*. OUTPUT    : XQ2     The momentum transfer squared
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  IX
      REAL  VEC1 (*),VEC2 (*)
      REAL  XQ2
      DOUBLE PRECISION  AX,BX
      AX = VEC1 (4) - VEC2 (4)
      BX = - (AX * AX)
      DO 120 IX = 1,3
          AX = VEC1 (IX) - VEC2 (IX)
          BX = BX + (AX * AX)
 120  CONTINUE
      XQ2 = BX
      RETURN
      END
CDECK  ID>, PXRAP4.
      SUBROUTINE PXRAP4 (PTRAK,AXIS,RAPY,IERR)
*.*********************************************************
*. ------
*. PXRAP4
*. ------
*. SOURCE: J.W.Gary
*. Calculate the rapidity of a particle along an axis
*. Usage     :
*.
*.      REAL  PTRAK (4.or.more)
*.      REAL  AXIS (3.or.more)
*.      REAL  RAPY
*.      INTEGER  IERR
*.
*.      ... define AXIS, e.g. = thrust axis
*.
*.      CALL PXRAP4 (PTRAK,AXIS,RAPY,IERR)
*.
*. INPUT     : PTRAK     The track momentum array
*. INPUT     : AXIS      The axis (normalized or unnormalized)
*. OUTPUT    : RAPY      The rapidity value
*. CONTROL   : IERR      =  0 if all is OK
*.                       = -1 if PTRAK lies exactly along AXIS
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  IERR,IX
      REAL  PTRAK (*),AXIS (*)
      REAL  RAPY,PLL
      DOUBLE PRECISION  AX,BX,CX,DRAPY,DEN,NUM
      IERR = 0
      AX = 0.0
      BX = 0.0
      DO 120  IX = 1,3
          AX = AX + PTRAK (IX) * AXIS (IX)
          BX = BX + AXIS (IX) * AXIS (IX)
 120  CONTINUE
      IF (BX.EQ.0.) THEN
          IERR = -1
          RAPY = 1000.
          RETURN
      ELSE
          CX = DSQRT (BX)
          PLL = AX / CX
      END IF
      IF (PLL.EQ.0) THEN
          RAPY = 0.
          RETURN
      END IF
      DEN = PTRAK (4) - PLL
      NUM = PTRAK (4) + PLL
      IF ((NUM*DEN).LE.0.) THEN
          IERR = -1
          RAPY = 2000.
          RETURN
      END IF
      DRAPY = 0.5 * DLOG (NUM / DEN)
      RAPY = DRAPY
      RETURN
      END
CDECK  ID>, PXRMX3.
      SUBROUTINE PXRMX3 (SVECT,CP,SP,RMX)
*.*********************************************************
*. ------
*. PXRMX3
*. ------
*. SOURCE: HERWIG (B.Webber,G.Marchesini)
*. Calculate the rotation matrix to get from vector VECT
*. to the Z axis, followed by a rotation PHI about the Z axis,
*. where CP, SP are the cosine and sine of PHI, respectively.
*. Usage     :
*.
*.      REAL  SVECT (3.or.more),
*.     +      RMX (3,3.or.more)
*.      REAL  CP,SP
*.
*.      CALL PXRMX3 (SVECT,CP,SP,RMX)
*.
*. INPUT     : VECT   The vector for which the rotation matrix
*.                    is to be calculated
*. INPUT     : CP     Cosine of phi
*. INPUT     : SP     Sine of phi
*. OUTPUT    : RMX    The rotation matrix
*.
*. LAST MOD :  9-Dec-00
*.
*. Modification Log:
*.  9-Dec-00 R.Yaari   Make PTCUT also double precision
*. 22-Sep-00 R.Yaari   Use double precision copy of array SVECT for calculations
*.*********************************************************
      IMPLICIT NONE
      REAL  SVECT (*),RMX (3,*)
      DOUBLE PRECISION  CT,ST,CF,SF,PP,PT,VECT(3),PTCUT
      REAL  CP,SP
      DATA  PTCUT / 1.D-10 /
      VECT(1) = SVECT(1)
      VECT(2) = SVECT(2)
      VECT(3) = SVECT(3)
      PT = VECT (1)**2 + VECT (2)**2
      IF (PT.LT.PTCUT) THEN
         CT = SIGN (1.0D0,VECT (3))
         ST = 0.
         CF = 1.
         SF = 0.
      ELSE
         PP = SQRT (VECT (3)**2 + PT)
         PT = SQRT (PT)
         CT = VECT (3) / PP
         ST = PT / PP
         CF = VECT (1) / PT
         SF = VECT (2) / PT
      END IF
      RMX (1,1) =  (CP * CF * CT) + (SP * SF)
      RMX (1,2) =  (CP * SF * CT) - (SP * CF)
      RMX (1,3) = -(CP * ST)
      RMX (2,1) = -(CP * SF) + (SP * CF * CT)
      RMX (2,2) =  (CP * CF) + (SP * SF * CT)
      RMX (2,3) = -(SP * ST)
      RMX (3,1) =  (CF * ST)
      RMX (3,2) =  (SF * ST)
      RMX (3,3) =  CT
      RETURN
      END
CDECK  ID>, PXROB3.
      SUBROUTINE PXROB3 (SRMX,SVECT,RVEC)
*.*********************************************************
*. ------
*. PXROB3
*. ------
*. SOURCE: HERWIG (B.Webber,G.Marchesini)
*. Rotate 3-vector VECT by inverse of rotation matrix RMX,
*.      RVEC = (RMX)-1 * VECT
*. Usage     :
*.
*.      REAL  VECT (3.or.more),
*.     +      RVEC (3.or.more),
*.     +      RMX  (3,3.or.more)
*.
*.      CALL PXROB3 (RMX,VECT,RVEC)
*.
*. INPUT     : RMX    The rotation matrix
*. INPUT     : VECT   The vector to be rotated
*. OUTPUT    : RVEC   The rotated vector
*.
*. LAST MOD : 22-Sep-00
*.
*. Modification Log:
*.
*. 22-Sep-00 R.Yaari   Use double precision copy of arrays for calculations
*.*********************************************************
      IMPLICIT NONE
      DOUBLE PRECISION  S1,S2,S3, RMX(3,3), VECT(3)
      REAL SRMX (3,*),SVECT (*),RVEC (*)
      INTEGER I,J
      DO 100 I = 1,3
        VECT(I) = SVECT(I)
        DO 150 J=1,3
          RMX(I,J) = SRMX(I,J)
  150   CONTINUE
  100 CONTINUE
      S1 = VECT (1) * RMX (1,1) + VECT (2) * RMX (2,1)
     +   + VECT (3) * RMX (3,1)
      S2 = VECT (1) * RMX (1,2) + VECT (2) * RMX (2,2)
     +   + VECT (3) * RMX (3,2)
      S3 = VECT (1) * RMX (1,3) + VECT (2) * RMX (2,3)
     +   + VECT (3) * RMX (3,3)
      RVEC (1) = S1
      RVEC (2) = S2
      RVEC (3) = S3
      RETURN
      END
CDECK  ID>, PXROF3.
      SUBROUTINE PXROF3 (SRMX,SVECT,RVEC)
*.*********************************************************
*. ------
*. PXROF3
*. ------
*. SOURCE: HERWIG (B.Webber,G.Marchesini)
*. Rotate 3-vector VECT by rotation matrix RMX,
*.      RVEC = RMX * VECT
*. Usage     :
*.
*.      REAL  VECT (3.or.more),
*.     +      RVEC (3.or.more),
*.     +      RMX (3,3.or.more)
*.
*.      CALL PXROF3 (RMX,VECT,RVEC)
*.
*. INPUT     : RMX    The rotation matrix
*. INPUT     : VECT   The vector to be rotated
*. OUTPUT    : RVEC   The rotated vector
*.
*. LAST MOD : 22-Sep-00
*.
*. Modification Log:
*.
*. 22-Sep-00 R.Yaari   Use double precision copy of arrays for calculations
*.*********************************************************
      IMPLICIT NONE
      DOUBLE PRECISION  S1,S2,S3, RMX(3,3), VECT(3)
      REAL SRMX (3,*),SVECT (*),RVEC (*)
      INTEGER I,J

      DO 100 I = 1,3
        VECT(I) = SVECT(I)
        DO 150 J=1,3
          RMX(I,J) = SRMX(I,J)
  150   CONTINUE
  100 CONTINUE
 
      S1 = RMX (1,1) * VECT (1) + RMX (1,2) * VECT (2)
     +   + RMX (1,3) * VECT (3)
      S2 = RMX (2,1) * VECT (1) + RMX (2,2) * VECT (2)
     +   + RMX (2,3) * VECT (3)
      S3 = RMX (3,1) * VECT (1) + RMX (3,2) * VECT (2)
     +   + RMX (3,3) * VECT (3)
      RVEC (1) = S1
      RVEC (2) = S2
      RVEC (3) = S3
      RETURN
      END

CDECK  ID>, PXROOT.
      SUBROUTINE PXROOT (XOPER,XROOT)
*.*********************************************************
*. ------
*. PXROOT
*. ------
*. SOURCE: HERWIG (B.Webber,G.Marchesini)
*. Square root with sign retention
*. Usage     :
*.
*.      REAL  XOPER,XROOT
*.
*.      CALL PXROOT (XOPER,XROOT)
*.
*. INPUT     : XOPER   The input operand
*. OUTPUT    : XROOT   Square root of the operand
*.
*.*********************************************************
      IMPLICIT NONE
      REAL  XOPER,XROOT
      DOUBLE PRECISION  AX
      AX = XOPER
      XROOT = DSIGN (DSQRT (ABS (AX)),AX)
      RETURN
      END
CDECK  ID>, PXSCMV.
      SUBROUTINE PXSCMV (ISIZ,SFAC,VECI,VECO)
*.*********************************************************
*. ------
*. PXSCMV
*. ------
*. SOURCE: J.W.Gary
*. Multiply a vector of arbitrary length by a constant
*. scale factor.
*. Usage     :
*.
*.      PARAMETER  (NDIM=1.or.more)
*.      REAL  VECI (NDIM.or.more),
*.     +      VECO (NDIM.or.more)
*.      REAL  SFAC
*.      INTEGER  ISIZ
*.
*.      ISIZ = 1.to.NDIM
*.      CALL PXSCMV (ISIZ,SFAC,VECI,VECO)
*.
*. INPUT     : ISIZ    The length of the vector
*. INPUT     : SFAC    The constant scale factor
*. INPUT     : VECI    The input vector   --->          --->
*. OUTPUT    : VECO    The output vector, VECO = SFAC * VECI
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  ISIZ,IX
      REAL  VECI (*),VECO (*)
      REAL  SFAC
      DOUBLE PRECISION  AX
      AX = SFAC
      DO 120 IX = 1,ISIZ
          VECO (IX) = AX * VECI (IX)
 120  CONTINUE
      RETURN
      END
CDECK  ID>, PXSORV.
      SUBROUTINE PXSORV (ISZ,ARY,KIX,COPT)
*.*********************************************************
*. ------
*. PXSORV
*. ------
*. SOURCE: HERWIG (B.Webber,G.Marchesini)
*. Sort a real array into assending order based on
*. the magnitude of its elements; provide an
*. integer "index array" which specifies the ordering
*. of the array.
*. Usage     :
*.
*.      PARAMETER  (NDIM=1.or.more)
*.      REAL  ARY (NDIM)
*.      INTEGER  KIX (NDIM)
*.      INTEGER  ISIZ
*.      CHARACTER*1  COPT
*.
*.      ISIZ = 1.to.NDIM
*.      COPT = 'I'
*.      CALL PXSORV (ISIZ,ARY,KIX,COPT)
*.
*. INPUT     : ISIZ  The dimension of the input array
*. INPUT     : ARY   The input array
*. OUTPUT    : KIX   The index array
*. CONTROL   : COPT  Control of output vector ARY
*.              = ' ' : return sorted ARY and index array KIX
*.              = 'I' : return index array KIX only, don't
*.                      modify ARY
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  MXSZ
      PARAMETER  (MXSZ=500)
      INTEGER  ISZ,IX,JX
      INTEGER  KIX (*),IL (MXSZ),IR (MXSZ)
      REAL  ARY (*),BRY (MXSZ)
      CHARACTER*1  COPT
      IF (ISZ.GT.MXSZ) THEN
          WRITE (6,FMT='('' PXSORT: Error,'',
     +           '' Max array size ='',I6)') MXSZ
          KIX (1) = -1
          GO TO 990
      END IF
      IL (1) = 0
      IR (1) = 0
      DO 10 IX = 2,ISZ
          IL (IX) = 0
          IR (IX) = 0
          JX = 1
   2      IF (ARY (IX).GT.ARY (JX)) GO TO 5
   3      IF (IL (JX).EQ.0) GO TO 4
          JX = IL (JX)
          GO TO 2
   4      IR (IX) = -JX
          IL (JX) =  IX
          GO TO 10
   5      IF (IR (JX).LE.0) GO TO 6
          JX = IR (JX)
          GO TO 2
   6      IR (IX) = IR (JX)
          IR (JX) = IX
  10  CONTINUE
      IX = 1
      JX = 1
      GO TO 8
  20  JX = IL (JX)
   8  IF (IL (JX).GT.0) GO TO 20
   9  KIX (IX) = JX
      BRY (IX) = ARY (JX)
      IX = IX + 1
      IF (IR (JX)) 12,30,13
  13  JX = IR (JX)
      GO TO 8
  12  JX = -IR (JX)
      GO TO 9
  30  IF (COPT.EQ.'I') RETURN
      DO 31 IX = 1,ISZ
  31  ARY (IX) = BRY (IX)
 990  RETURN
      END
CDECK  ID>, PXSTBL.
      SUBROUTINE PXSTBL (NTRAK,IPART,IHIST,IFIND)
*.*********************************************************
*. ------
*. PXSTBL
*. ------
*. SOURCE: J.W.Gary
*. Routine to identify whether a particle positioned in an event
*. generator event record is stable or not as determined by
*. whether it has any daughters
*. Usage:
*.
*.      INTEGER  MXTRK
*.      PARAMETER  (MXTRK=4000)
*.      INTEGER  NTRAK,IPART,IFIND
*.      INTEGER  IHIST (MXTRK)
*.
*.      ... generate an event with event generator ...
*.
*.      CALL PXSTBL (NTRAK,IPART,IHIST,IFIND)
*.
*. INPUT     : NTRAK    Number of entries in the event record
*. INPUT     : IPART    Position of the particle in the event record
*. INPUT     : IHIST    Particle history record for the event
*. OUTPUT    : IFIND    = 1 if the particle is stable
*.                      = 0 if not
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  IPART,IFIND,INX,NTRAK,IPAR
      INTEGER  IHIST (*)
      LOGICAL  LPRT
      DATA  LPRT / .FALSE. /

      IFIND = 1
      INX = IPART
 100  INX = INX + 1
          IF (INX.GT.NTRAK) GO TO 990
          IPAR = IHIST (INX)
          IF (IPAR.EQ.IPART) THEN
              IFIND = 0
              GO TO 990
          END IF
      GO TO 100

 990  RETURN
      END
CDECK  ID>, PXSUB5.
      SUBROUTINE PXSUB5 (VEC1,VEC2,VECO)
*.*********************************************************
*. ------
*. PXSUB5
*. ------
*. SOURCE: VECSUB (V. Blobel)
*. Subtract two 4-momenta, calculate the invariant mass of
*. the difference, then write the invariant mass into 5th
*. component of the output vector
*. Usage     :
*.
*.      REAL  VEC1 (4.or.more),
*.     +      VEC2 (4.or.more),
*.     +      VECO (5.or.more)
*.
*.      CALL PXSUB5 (VEC1,VEC2,VECO)
*.
*. INPUT     : VEC1    The first vector
*. INPUT     : VEC2    The second vector  --->   --->   --->
*. OUTPUT    : VECO    The output vector, VECO = VEC1 - VEC2
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  IX
      REAL  VEC1 (*),VEC2 (*),VECO (*)
      DOUBLE PRECISION  A,B
      A = VEC1 (4) - VEC2 (4)
      VECO (4) = A
      B = A * A
      DO 120 IX = 1,3
          A = VEC1 (IX) - VEC2 (IX)
          B = B - A * A
          VECO (IX) = A
 120  CONTINUE
      VECO (5) = DSIGN (DSQRT (DABS (B)),B)
      RETURN
      END
CDECK  ID>, PXSUBV.
      SUBROUTINE PXSUBV (ISIZ,VEC1,VEC2,VECO)
*.*********************************************************
*. ------
*. PXSUBV
*. ------
*. SOURCE: J.W.Gary
*. Subtract two vectors of arbitrary length
*. Usage     :
*.
*.      INTEGER  NDIM
*.      PARAMETER  (NDIM=1.or.more)
*.      REAL  VEC1 (NDIM.or.more),
*.     +      VEC2 (NDIM.or.more),
*.     +      VECO (NDIM.or.more)
*.      INTEGER  ISIZ
*.
*.      ISIZ = 1.to.NDIM
*.      CALL PXSUBV (ISIZ,VEC1,VEC2,VECO)
*.
*. INPUT     : ISIZ    The length of the vectors
*. INPUT     : VEC1    The first vector
*. INPUT     : VEC2    The second vector  --->   --->   --->
*. OUTPUT    : VECO    The output vector, VECO = VEC1 - VEC2
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  ISIZ,IX
      REAL  VEC1 (*),VEC2 (*),VECO (*)
      DOUBLE PRECISION  AX
      DO 120 IX = 1,ISIZ
          AX = VEC1 (IX) - VEC2 (IX)
          VECO (IX) = AX
 120  CONTINUE
      RETURN
      END
CDECK  ID>, PXSUMV.
      SUBROUTINE PXSUMV (ISIZ,ARR,SUM)
*.*********************************************************
*. ------
*. PXSUMV
*. ------
*. SOURCE: J.W.Gary
*. Sum up the elements of a real or integer vector
*. Usage:
*.
*.      INTEGER  NDIM
*.      PARAMETER  (NDIM=1.or.more)
*.      REAL  ARR (NDIM),SUM
*.      INTEGER  ISIZ
*.
*.      ISIZ = 1.to.NDIM
*.      CALL  PXSUMV (ISIZ,ARR,SUM)
*.
*. INPUT     : ISIZ    Number of elements to sum up
*. INPUT     : ARR     The real (or integer) array
*. OUTPUT    : SUM     The sum of elements 1 to ISIZ of ARR
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  ISIZ,IN
      REAL  ARR (*),SUM
      SUM = 0.
      DO 120  IN = 1,ISIZ
          SUM = SUM + ARR (IN)
 120  CONTINUE
      RETURN
      END
CDECK  ID>, PXZERV.
      SUBROUTINE PXZERV (ISZE,VEC)
*.*********************************************************
*. ------
*. PXZERV
*. ------
*. SOURCE: J.W.Gary
*. Zero a vector of arbitrary length
*. Usage     :
*.
*.      INTEGER  NDIM
*.      PARAMETER  (NDIM=1.or.more)
*.      REAL  VEC (NDIM)
*.      INTEGER  ISIZ
*.
*.      ISIZ = 1.to.NDIM
*.      CALL PXZERV (ISZE,VEC)
*.
*. INPUT     : ISIZ    The length of the vector to be zeroed
*. INPUT     : VEC     the vector to be zeroed
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  ISZE,IX
      REAL  VEC (*)
      DO 120  IX = 1,ISZE
          VEC (IX) = 0.
 120  CONTINUE
      RETURN
      END
CDECK  ID>, PXEEC4.
      SUBROUTINE PXEEC4 (NTRAK,ITKDM,PTRAK,ENORM,NBINS,
     +                   EEC,EECER,EECA,EECAER,CHAR,IERR)
*.*********************************************************
*. ------
*. PXEEC4
*. ------
*. Routine to calculate the Energy-Energy Correlation (EEC) and
*. Energy-Energy Correlation Asymmetry (EECA) distributions.
*. The EEC formula used is :
*.
*.                         NEVT  NTRAK
*. EEC(Thet) = (1/NEVT) *  SUM *  SUM { E(i)*E(j)/ENORM**2
*.                         k=1    i,j
*.                                         * (1/Dthet) * delta(i,j) }
*.
*. where Dthet is the angular bin size (determined automatically
*. from NBINS, see argument list below) and the delta function
*. delta(i,j) is defined by
*.
*. delta(i,j) = 1 if (Thet-DThet/2) < Angle(i,j) < (Thet+DThet/2)
*.            = 0 otherwise
*.
*. Please note that the errors are statistical only assuming no
*. correlation betweeen the entries in different bins.
*. Since this latter is not a valid presumption, the errors
*. returned are too small, probably by fifty percent or so.
*.
*. Usage     :
*.
*.      INTEGER  ITKDM,MXTRAK,NBINS
*.      PARAMETER  (ITKDM=4.or.more,MXTRAK=1.or.more)
*.      PARAMETER  (NBINS=50.or.60.or.something.like.that)
*.      INTEGER  NTRAK,IERR
*.      REAL  PTRAK (ITKDM,MXTRAK),EEC (NBINS),EECER (NBINS),
*.     +      EECA (NBINS/2),EECAER (NBINS/2)
*.      CHARACTER*1 CHAR
*.      REAL  ENORM
*.
*.      NTRAK = 1.to.MXTRAK
*.      CALL PXEEC4 (NTRAK,ITKDM,PTRAK,ENORM,NBINS,
*.     +             EEC,EECER,EECA,EECAER,CHAR,IERR)
*.
*. Example:  Normalize to Visible Energy, No self-correlations
*.
*.        DO 100  IEVT=1,NEVT
*.                  ...
*.         >>>  Generate.Event, calculate visible energy EVISIB
*.                  ...
*.*         Energy-Energy Correlation
*.*         ------ ------ -----------
*.           ENORM = EVISIB
*.           CALL PXEEC4 (NTRAK,ITKDM,PTRAK,ENORM,NBINS,
*.     +                  EEC,EECER,EECA,EECAER,' ',IERR)
*. 100    CONTINUE
*.*     Normalize EEC, Calculate EECA
*.*     --------- ---  --------- ----
*.        CALL PXEEC4 (NTRAK,ITKDM,PTRAK,ENORM,NBINS,
*.     +               EEC,EECER,EECA,EECAER,'N',IERR)
*.        END
*.
*. INPUT     : NTRAK   Total number of particles
*. INPUT     : ITKDM   First dimension of PTRAK
*. INPUT     : PTRAK   Particle 4-momentum (Px,Py,Pz,E)
*. INPUT     : ENORM   The energy with which to normalize
*.                     (either the visible energy or the C.M. energy)
*. INPUT     : NBINS   The number of bins for the EEC distribution
*.                     (typical=50; MUST BE AN EVEN VALUED INTEGER)
*. OUTPUT    : EEC     the Energy-Energy-Correlation distribution
*. OUTPUT    : EECER   the statistical errors for EEC
*. OUTPUT    : EECA    the EECA Asymmetry function distribution
*. OUTPUT    : EECAER  the statistical errors for EECA
*. CONTROL   : CHAR    control variable
*.                = ' ' (in event loop): no self-correlations
*.                = 'S' (in event loop): self-correlations included
*.                = 'N' (after event loop): normalize EEC and
*.                                          calculate EECA
*. OUTPUT    : IERR    = 0 if all is OK
*.
*. CALLS     : PXZERV,PXANG3
*. CALLED    : By User
*.
*. AUTHOR    :  M.Weber/J.W.Gary
*. CREATED   :  14-Feb-89
*. LAST MOD  :  05-Aug-90
*.
*. Modification Log.
*. 04-Mar-89   Calculation of statistical errors,  J.W.Gary
*. 05-Aug-90   Double precision                    J.W.Gary
*. 12-May-97  D. Chrisman, remove declaration of unused variables
*.              BINMID and IECNT.
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  NXEECB
      PARAMETER  (NXEECB=500)
      REAL  PIEEC
      PARAMETER  (PIEEC=3.141593)
      INTEGER  IERR,NTRAK,ITKDM,NBINS,IB,IP1,IP2,IEND
      INTEGER  NEEC
      REAL  PTRAK (ITKDM,*),EEC (*),EECER (*),EECA (*),EECAER (*)
      REAL  ENORM,COST,THET
      REAL  XBINSZ
      DOUBLE PRECISION  WEIGHT,WEIGH2,DEEC (NXEECB),DEECER (NXEECB),
     +                  DENOM,EECSUM,XFACT
      CHARACTER*1 CHAR
      LOGICAL  INIEEC
      SAVE  NEEC,XBINSZ,INIEEC,DEEC,DEECER,EECSUM
      DATA  INIEEC / .TRUE. /

      IERR = 0
      IF (CHAR.EQ.'N') GO TO 200
      IF (MOD (NBINS,2).NE.0) THEN
          WRITE (6,FMT='('' PXEEC4: Error, NBINS ='',I10,
     +      '' not an even number'')') NBINS
          IERR = -1
          GO TO 990
      END IF
      IF (NBINS.GT.NXEECB) THEN
          WRITE (6,FMT='('' PXEEC4: Error, NBINS ='',I10,
     +      '' must be smaller than NXEECB ='',I10)') NBINS,NXEECB
          IERR = -1
          GO TO 990
      END IF
      IF (ENORM.EQ.0) THEN
          WRITE (6,FMT='('' PXEEC4: Error, ENORM ='',E12.4)') ENORM
          IERR = -1
          GO TO 990
      END IF
*  initialize
*  ----------
      IF (INIEEC) THEN
          INIEEC = .FALSE.
          NEEC = 0
          XBINSZ = (PIEEC / FLOAT (NBINS))
          DO 105 IB = 1,NBINS
             DEEC (IB) = 0D0
             DEECER (IB) = 0D0
 105      CONTINUE
          EECSUM = 0D0
      END IF
      NEEC = NEEC + 1
*  set up self-correlation or no self-correlation
*  --- -- ---- ----------- -- -- ---- -----------
      IF (CHAR.EQ.'S') THEN
          IEND = NTRAK
          XFACT = 1D0
      ELSE
          XFACT = 2D0
      END IF
*  calculation of EEC
*  ----------- -- ---
      DO 180 IP1=1,NTRAK
          IF (XFACT.GT.1.5) IEND = IP1-1
          DO 160 IP2=1,IEND
              CALL PXANG3 (PTRAK (1,IP1),PTRAK (1,IP2),COST,THET,IERR)
              IF (IERR.EQ.-1) GO TO 990
              IB = (THET/XBINSZ) + 1
              IF (IB.LT.1.OR.IB.GT.NBINS) THEN
                 IB = NBINS
                 IF (IB.LT.1) IB = 1
              END IF
              WEIGHT = (PTRAK (4,IP2) * PTRAK (4,IP1)) / ENORM**2
              WEIGH2 = WEIGHT * WEIGHT
              DEEC (IB) = DEEC (IB) + XFACT * WEIGHT
              DEECER (IB) = DEECER (IB) + XFACT * WEIGH2
              EECSUM = EECSUM + XFACT * WEIGHT
 160      CONTINUE
 180  CONTINUE
      GO TO 990
*  normalization and calculation of asymmetry
*  ------------- --- ----------- -- ---------
 200  WRITE (6,FMT='('' PXEEC4: Normalize EEC, EECA'')')
      IF (NEEC.EQ.0) THEN
          IERR = -1
          WRITE (6,FMT='('' PXEEC4: Error, NEEC ='',I10)') NEEC
          GO TO 990
      END IF
      DENOM = FLOAT (NEEC) * XBINSZ
      WRITE (6,FMT='(''   EECSUM, EECSUM ='',2E12.4)')
     +   EECSUM,EECSUM/FLOAT (NEEC)
      DO 220  IB=1,NBINS
          DEEC (IB) = DEEC (IB) / DENOM
          DEECER (IB) = DSQRT (DEECER (IB)) / DENOM
          EEC (IB) = DEEC (IB)
          EECER (IB) = DEECER (IB)
 220  CONTINUE
      DO 240 IB=1,NBINS/2
          EECA (IB) = DEEC (NBINS+1-IB) - DEEC (IB)
          EECAER (IB) = DSQRT (DEECER (NBINS+1-IB)**2 + DEECER (IB)**2)
 240  CONTINUE
      INIEEC = .TRUE.
      NEEC = 0

 990  RETURN
      END
CDECK  ID>, PXPTC4.
      SUBROUTINE PXPTC4 (NTRAK,ITKDM,PTRAK,ENORM,NBINS,CHAR,
     +                   THETP,BETA,PTC,PTCI,PTCER,PTCIER,IERR)
*.*********************************************************
*. ------
*. PXPTC4
*. ------
*. Calculates planar triple energy correlations (PTC)
*.
*.                 d(j,k) * d(i,k)
*. PTC(ibi,ibj) =  --------------
*.                 NEVT * Dthet**2
*.
*.                      NEVT  NTRAK   Ei * Ej * Ek
*.                  *   SUM  * SUM  { ------------ }
*.                      n=1   i,j,k     ENORM**3
*.
*. where, ibi is the bin number corresponding to
*.            angle(j,k) = (ibi-0.5)*Dthet
*.        NEVT is the number of events
*.        Dthet is the width of the angular bin
*.        d(i,j) = 1 if:  ibi -1  <  Angle(i,j)/Dthet  < ibi
*.                 0 otherwise
*.
*. INPUT     : NTRAK    Total number of particles
*. INPUT     : ITKDM    First dimension of PTRAK
*. INPUT     : PTRAK    Particle 4-momentum (Px,Py,Pz,E)
*. INPUT     : ENORM    The energy with which to normalize
*. INPUT     : NBINS    The number of bins in each dimension
*. CONTROL   : CHAR     control variable
*.                      = ' ' (in event loop)
*.                      = 'N' (after event loop): normalize PTC
*. INPUT     : THETP    Maximum angle for planarity condition (rad.)
*. INPUT     : BETA     Angle for range of integration (rad.)
*. OUTPUT    : PTC      The Planar TEC
*. OUTPUT    : PTCI     Integral of PTC
*. OUTPUT    : PTCER    The statistical error for PTC
*. OUTPUT    : PTCIER   The statistical error for PTCI
*. OUTPUT    : IERR     = 0 if all is OK
*.
*. CALLS     : PXANG3
*. CALLED    : By User
*.
*. AUTHOR    : G. Azuelos
*. CREATED   :
*. LAST MOD  :
*.
*. Modification Log.
*. 24-Jul-90   Integration into PX library    J.W.Gary
*. 12-May-97 D. Chrisman, remove declaration of unused variables IFLAG,
*.             IER and PTCIET.
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  NXPTCB
      PARAMETER  (NXPTCB=50)
      REAL  PIPTC
      PARAMETER  (PIPTC=3.141593)
      INTEGER  NTRAK,ITKDM,NBINS,IERR,IBI,IBJ,I,J,K
      INTEGER  NPTC
      REAL  PTC (NBINS,NBINS),PTCER (NBINS,NBINS),PTRAK(ITKDM,*)
      REAL  ENORM,BETA,PTCI,PTCIER,THETP,COST,XI,XJ,XK
      REAL  BPTSIZ,BPTSZ2
      DOUBLE PRECISION  WEIGHT,DPTC (NXPTCB,NXPTCB),DPTCI,DPTCIE,
     +                  DPTCER (NXPTCB,NXPTCB),DPTCIT,DENOM
      CHARACTER*1 CHAR
      LOGICAL  INIPTC
      SAVE BPTSIZ,BPTSZ2,NPTC,INIPTC
      DATA  INIPTC / .TRUE. /

      IERR = 0
      IF (CHAR.EQ.'N') GO TO 200
      IF (ENORM.EQ.0) THEN
         WRITE (6,FMT='('' PXPTC4: Error, ENORM ='',E12.4)') ENORM
         IERR = -1
         GO TO 990
      END IF
      IF (NBINS.GT.NXPTCB) THEN
          WRITE (6,FMT='('' PXPTC4: Error, NBINS ='',I10,
     +      '' must be smaller than NXPTCB ='',I10)') NBINS,NXPTCB
          IERR = -1
          GO TO 990
      END IF
*  initialize
*  ----------
      IF (INIPTC) THEN
         INIPTC = .FALSE.
         NPTC = 0
         BPTSIZ = PIPTC / FLOAT (NBINS)
         BPTSZ2 = BPTSIZ**2
         DO 120 I=1,NBINS
            DO 110 J=1,NBINS
               DPTC (I,J) = 0D0
               DPTCER (I,J) = 0D0
 110        CONTINUE
 120     CONTINUE
         DPTCI = 0D0
         DPTCIE = 0D0
         DPTCIT = 0D0
      END IF
      NPTC = NPTC + 1
      DO 180 I=1,NTRAK
         DO 170 J=1,NTRAK
            DO 160 K=1,NTRAK
               CALL PXANG3 (PTRAK(1,J),PTRAK(1,K),COST,XI,IERR)
               IF (IERR.NE.0) GO TO 990
               CALL PXANG3 (PTRAK(1,I),PTRAK(1,K),COST,XJ,IERR)
               IF (IERR.NE.0) GO TO 990
               CALL PXANG3 (PTRAK(1,I),PTRAK(1,J),COST,XK,IERR)
               IF (IERR.NE.0) GO TO 990
***  temporary to check normalization
Comment               WEIGHT = (PTRAK (4,I)/ENORM) * (PTRAK (4,J)/ENORM)
Comment     +                * (PTRAK (4,K)/ENORM)
Comment               DPTCIT = DPTCIT + WEIGHT
*************************************
*            select planar triplets
*            ------ ------ --------
               IF (ABS ((2*PIPTC)-XI-XJ-XK).LT.THETP) THEN
                  IBI = (XI/BPTSIZ) + 1
                  IBJ = (XJ/BPTSIZ) + 1
                  IF (IBI.LT.1) IBI = 1
                  IF (IBI.GT.NBINS) IBI = NBINS
                  IF (IBJ.LT.1) IBJ = 1
                  IF (IBJ.GT.NBINS) IBJ = NBINS
                  WEIGHT = (PTRAK (4,I)/ENORM) * (PTRAK (4,J)/ENORM)
     +                   * (PTRAK (4,K)/ENORM)
                  DPTC (IBI,IBJ) = DPTC (IBI,IBJ) + WEIGHT
                  DPTCER (IBI,IBJ) = DPTCER (IBI,IBJ) + WEIGHT * WEIGHT
*               integral of distribution up to BETA
*               -------- -- ------------ -- -- ----
                  IF ((XI.LT.PIPTC-BETA).AND.(XJ.LT.PIPTC-BETA).AND.
     +                (XI+XJ.GT.PIPTC+BETA-THETP)) THEN
Comment*                   MarkJ definition
Comment*                   ----- ----------
Comment     +                (XI+XJ.GT.PIPTC+BETA)) THEN
                     DPTCI = DPTCI + WEIGHT
                     DPTCIE = DPTCIE + WEIGHT * WEIGHT
                  END IF
               END IF
 160        CONTINUE
 170     CONTINUE
 180  CONTINUE
      GO TO 990
*  normalization
*  -------------
 200  CONTINUE
      IF (NPTC.EQ.0) THEN
         PTCI = 0.
         PTCIER = 0.
      ELSE
         DENOM = FLOAT (NPTC) * BPTSZ2
         DO 280 I=1,NBINS
            DO 260 J=1,NBINS
               PTC (I,J) = DPTC (I,J) / DENOM
               PTCER (I,J) = DSQRT (DPTCER (I,J)) / DENOM
 260        CONTINUE
 280     CONTINUE
         PTCI = DPTCI / FLOAT (NPTC)
         PTCIER = DSQRT (DPTCIE) / FLOAT (NPTC)
Comment         PTCIET = DPTCIT / FLOAT (NPTC)
Comment         WRITE (6,FMT='('' PXPTC4: PTCIET ='',E12.4)') PTCIET
      END IF

 990  RETURN
      END
CDECK  ID>, PXAKO4.
      SUBROUTINE PXAKO4 (NTRAK,ITKDM,MXTRK,PTRAK,NTPER,
     +                   AKOPL,AKOVEC,IERR)
*.*********************************************************
*. ------
*. PXAKO4
*. ------
*. Routine to calculate the acoplanarity distribution.
*. The algorithm is an approximate one based on a Jade
*. program by S.Bethke and E.Elsen.
*. The algorithm has the following characteristics:
*.   (1) The missing momentum is added as an extra particle
*.       in order to "complete" momentum conservation.
*.   (2) The acoplanarity plane is assumed to be defined by
*.       the momentum vectors of two of the particles in the
*.       event. The plane so-defined which results in the
*.       smallest acoplanarity value is taken as the "true"
*.       acoplanarity plane.
*.   (3) Should the number of particles in the event exceed
*.       the cutoff NTPER (see explanation of the argument list
*.       below) only the NTPER particles having the largest
*.       momentum are used to define the acoplanarity plane.
*.       The missing momentum vector used to complete momentum
*.       conservation is calculated using only these NTPER particles.
*.   (4) The final acoplanarity value is calculated using all
*.       particles, whether or not they were used in the search
*.       for the acoplanarity plane.  This acoplanarity calculation
*.       also includes a fictitious particle introduced to complete
*.       momentum conservation, should one be necessary.
*. Usage     :
*.
*.      INTEGER  ITKDM,MXTRK,NTPER
*.      PARAMETER  (ITKDM=4.or.more,MXTRK=1.or.more)
*.      PARAMETER  (NTPER=80.or.so)
*.      INTEGER  NTRAK,IERR
*.      REAL  PTRAK (ITKDM,MXTRK),AKOVEC (3.or.more)
*.      REAL  AKOPL
*.
*.      NTRAK = 1.to.MXTRK
*.      CALL PXAKO4 (NTRAK,ITKDM,MXTRK,PTRAK,
*.     +            NTPER,AKOPL,AKOVEC,IERR)
*.
*. INPUT     : NTRAK   Total number of particles
*. INPUT     : ITKDM   First dimension of PTRAK
*. INPUT     : MXTRK   Maximum number particles allowed in PTRAK
*. INPUT     : PTRAK   Particle 4-momentum (Px,Py,Pz,E)
*. INPUT     : NTPER   Maximum number of particles to use for the
*.                     Acoplanarity calculation (for speed purposes)
*. OUTPUT    : AKOPL   The acoplanarity value
*. OUTPUT    : AKOVEC  the normalized acoplanarity axis vector
*. OUTPUT    : IERR    = 0 if all is OK
*.
*. CALLS     : PXADDV,PXMAGV,PXCOPV,PXSORV,PXCRO3,PXDOTV
*. CALLED    : By User
*.
*. AUTHOR    :  M.Weber/J.W.Gary
*. CREATED   :  05-Mar-89
*. LAST MOD  :  05-Mar-89
*.
*. Modification Log.
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER LMXTK
      PARAMETER  (LMXTK=250)
      INTEGER  KIX (LMXTK)
      INTEGER  NTRAK,ITKDM,MXTRK,IERR,NTPER,NPERM,IX,IP1,IP2,IP3,
     +         INX1,INX2,IOFF,IKCNT
      REAL  PTRAK (ITKDM,*),AKOVEC (*),PCROS (3),PMISS (4),
     +      PMAG (LMXTK)
      REAL  AKOPL,PTOT,AKTRY,DOTP,PSUM
      SAVE  IKCNT
      LOGICAL  SORT
      DATA  IKCNT / 0 /

      IERR = 0
      IF (NTRAK.LE.1.OR.NTRAK.GE.MXTRK) THEN
          WRITE (6,FMT='('' PXAKO4: Error, NTRAK+1 ='',I6,
     +           '' greater than MXTRK ='',I6)') NTRAK+1,MXTRK
          IERR = -1
          GO TO 990
      END IF
      IF (NTRAK.GE.LMXTK) THEN
          WRITE (6,FMT='('' PXAKO4: Error, NTRAK+1 ='',I6,
     +           '' greater than LMXTK ='',I6)') NTRAK+1,LMXTK
          IERR = -1
          GO TO 990
      END IF
*  sort momenta if number of tracks too large
*  ---- ------- -- ------ -- ------ --- -----
      NPERM = NTRAK
      IF (NPERM.GT.NTPER) THEN
          DO 110 IP1 = 1,NTRAK
              CALL PXMAGV (3,PTRAK (1,IP1),PMAG (IP1))
 110      CONTINUE
          CALL PXSORV (NTRAK,PMAG,KIX,'I')
          NPERM = NTPER
          SORT = .TRUE.
          IKCNT = IKCNT + 1
          IF (IKCNT.LE.5) WRITE (6,FMT='(
     +       '' PXKOP4: NTRAK,NPERM ='',2I10)') NTRAK,NPERM
      ELSE
          DO 115 IP1 = 1,NTRAK
              KIX (IP1) = IP1
 115      CONTINUE
          SORT = .FALSE.
      END IF
*  missing momentum for particles to be used to find plane
*  ------- -------- --- --------- -- -- ---- -- ---- -----
      CALL PXZERV (4,PMISS)
      DO 120 IP1 = 1,NPERM
C >>> This loop for Bethke/Elsen (almost)      DO 120 IP1 = 1,NTRAK
          INX1 = KIX ((NTRAK+1)-IP1)
          CALL PXADDV (4,PTRAK (1,INX1),PMISS,PMISS)
 120  CONTINUE
      CALL PXMAGV (3,PMISS,PTOT)
      IOFF = 1
      IF (PTOT.GT.(1.E-4)) THEN
          NPERM = NPERM + 1
          IOFF = 2
          DO 125 IX = 1,3
              PTRAK (IX,NTRAK+1) = - PMISS (IX)
 125      CONTINUE
          KIX (NTRAK+1) = NTRAK + 1
      END IF
*  loop over permutations, find acoplanarity axis
*  ---- ---- ------------  ---- ------------ ----
      AKOPL = 999999.
      DO 170 IP1 = 1,NPERM-1
          DO 160 IP2 = IP1+1,NPERM
*           trial acoplanarity plane
*           ----- ------------ -----
              INX1 = KIX ((NTRAK+IOFF)-IP1)
              INX2 = KIX ((NTRAK+IOFF)-IP2)
              CALL PXCRO3 (PTRAK (1,INX1),PTRAK (1,INX2),PCROS)
              CALL PXMAGV (3,PCROS,PTOT)
              IF (PTOT.EQ.0) THEN
                  WRITE (6,FMT='('' PXAKO4: PTOT ='',E12.4)') PTOT
                  GO TO 160
              END IF
*           trial acoplanarity value
*           ----- ------------ -----
              AKTRY = 0.
              DO 140 IP3 = 1,NPERM
                  INX1 = KIX ((NTRAK+IOFF)-IP3)
                  CALL PXDOTV (3,PCROS,PTRAK (1,INX1),DOTP)
                  AKTRY = AKTRY + ABS (DOTP)
 140          CONTINUE
              AKTRY = AKTRY / PTOT
*           store new acoplanarity value and axis
*           ----- --- ------------ ----- --- ----
              IF (AKTRY.LT.AKOPL) THEN
                  DO 150 IX = 1,3
                      AKOVEC (IX) = PCROS (IX) / PTOT
 150              CONTINUE
                  AKOPL = AKTRY
              END IF
 160      CONTINUE
 170  CONTINUE
*  missing momentum for all particles
*  ------- -------- --- --- ---------
      IF (SORT) CALL PXMIS4 (NTRAK,ITKDM,PTRAK,PTRAK (1,NTRAK+1))
      PSUM = 0.
      AKOPL = 0.
      DO 180 IP1 = 1,(NTRAK+IOFF)-1
          CALL PXDOTV (3,AKOVEC,PTRAK (1,IP1),DOTP)
          AKOPL = AKOPL + ABS (DOTP)
          CALL PXMAGV (3,PTRAK (1,IP1),PTOT)
          PSUM = PSUM + PTOT
 180  CONTINUE
      AKOPL = 4. * (AKOPL / PSUM)**2

 990  RETURN
      END
CDECK  ID>, PXFOXW.
      SUBROUTINE PXFOX4 (IORDER,NTRAK,ITKDM,PTRAK,FWZER,FWNOR,IERR)
*.*********************************************************
*. ------
*. PXFOX4
*. ------
*. Routine to calculate the Fox-Wolfram moments of an event
*. (see G.Fox and S. Wolfram, Nucl.Phys.B149 (1979) 413).
*. Usage     :
*.
*.      INTEGER  NFOXM,ITKDM,MXTRK
*.      PARAMETER (NFOXM=4.or.so)
*.      PARAMETER (ITKDM=4.or.more,MXTRAK=1.or.more)
*.      REAL  PTRAK (ITKDM,MXTRK),FWNOR (NFOXM)
*.      REAL  FWZER
*.      INTEGER  IORDER,NTRAK,IERR
*.
*.      IORDER = 1.to.NFOXM
*.      NTRAK = 1.to.MXTRAK
*.      CALL PXFOX4 (IORDER,NTRAK,ITKDM,PTRAK,FWZER,FWNOR,IERR)
*.
*. INPUT    :  IORDER  The order up to which the Fox-Wolfram
*.                     moments are to be calculated
*. INPUT    :  NTRAK   Number of particles
*. INPUT    :  ITKDM   First dimension of PTRAK
*. INPUT    :  PTRAK   Particle 4-momentum (Px,Py,Pz,E)
*. OUTPUT   :  FWZER   The Zeroth order Fox-Wolfram moment
*. OUTPUT   :  FWNOR   Fox-Wolfram moments: order 1 to order IORDER,
*.                     normalized by the zeroth order moment FWNOR
*.                     i.e.
*.                         FWNOR(1) = Order1 / Order0
*.                         FWNOR(2) = Order2 / Order0
*.                     etc.
*. OUTPUT   :  IERR    = 0 if all is OK; = -1 otherwise.
*.
*. Comment:
*. The calculation has been checked (on Opal) only up to
*. IORDER = 4 but is probably OK for higher moments too.
*.
*. CALLS     : none
*. CALLED    : By User
*.
*. AUTHOR    :  Eckhard Elsen (Jade)
*. CREATED   :  12-Aug-79
*. LAST MOD  :  18-Feb-89
*.
*. Modification Log.
*. 18-Feb-89  Adapt to PX environment   J.L.Pinfold/J.W.Gary
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  NTRAK,ITKDM,I,J,L,IORD,I1,IERR,IORDER,IX
      REAL XL (20),FWNOR (*),PTRAK (ITKDM,*)
      REAL  X,FL,PTOT1,PTOT2,FWZER
      DOUBLE PRECISION  DAH (20),DPI (3),DETOT,DPI2,DPIT,DPIJ

      IERR = 0
      IF (IORDER.LE.1) THEN
          IERR = -1
          WRITE (6,FMT='('' PXFOX4: Error, IORDER='',I6,
     +           '' must be greater than Zero'')') IORDER
          GO TO 990
      END IF
      IORD = IORDER + 1
      DO 10 I=1,IORD
          DAH (I) = 0.D0
 10   CONTINUE
      DETOT = 0.
*  loop over all combinations
*  ---- ---- --- ------------
      DO 180 I=1,NTRAK
          DETOT = DETOT + PTRAK (4,I)
          CALL PXMAGV (3,PTRAK (1,I),PTOT1)
          DPIT = PTOT1
          DPI2 = DPIT * DPIT
*  compute diagonal elements
*  ------- -------- --------
          DO 100 L=1,IORD
             DAH(L) = DAH(L) + DPI2
 100      CONTINUE
          DO 110 L=1,3
              DPI(L) = PTRAK (L,I) / DPIT
 110      CONTINUE
*  compute off-diagonal elements
*  ------- --- -------- --------
          I1 = I + 1
          IF(I1.GT.NTRAK) GO TO 200
          DO 160 J = I1,NTRAK
              CALL PXMAGV (3,PTRAK (1,J),PTOT2)
              DPIJ = PTOT1 * PTOT2
              X=(DPI(1)*PTRAK(1,J)+DPI(2)*PTRAK(2,J)+DPI(3)*PTRAK(3,J))
     +         / PTOT2
*  Legendre polynomials
*  -------- -----------
              XL(1) = 1.
              DAH(1) = DAH(1) + 2.*DPIJ*XL(1)
              IF( IORD .LT. 2 ) GO TO 160
              XL(2) = X
              DAH(2) = DAH(2) + 2.*DPIJ*XL(2)
              IF( IORD .LT. 3 ) GO TO 160
              DO 140 L=3,IORD
                  FL = L
                  XL(L) = ((2.*FL-3.)*X*XL(L-1)
     +                  - (FL-2.)*XL(L-2))/(FL-1.)
                  DAH(L) = DAH(L) + 2.*DPIJ*XL(L)
 140          CONTINUE
 160      CONTINUE
 180  CONTINUE
*  Fox-Wolfram moments
*  --- ------- -------
 200  FWZER = DAH (1) / (DETOT * DETOT)
      DO 220 L=2,IORD
          IX = L - 1
          FWNOR (IX) = DAH (L) / (DETOT * DETOT)
          FWNOR (IX) = FWNOR (IX) / FWZER
 220  CONTINUE

 990  RETURN
      END
CDECK  ID>, PXJSP3.
      SUBROUTINE PXJSP3(NTRAK,IPTK,PTRAK,SEVAL,ASEVEC,IERR)
*.*********************************************************
*. ------
*. PXJSP3
*. ------
*. Routine to calculate the eigenvectors and eigenvalues of the
*. momentum tensor. The eigenvectors of the momentum tensor are
*. the same as the eigenvectors of the Sphericity matrix;
*. the eigenvalues are related as noted below.
*. Usage     :
*.
*.      INTEGER  IPTK,NTRAK
*.      PARAMETER  (ITKDM.ge.3,NTRAK.gt.1)
*.      INTEGER NTRAK,IERR
*.      REAL  PTRAK (ITKDM,MXTRAK),
*.     +      SEVEC (3,3.or.more),
*.     +      SEVAL (3.or.more)
*.
*.      NTRAK = 1.to.MXTRAK
*.      CALL PXJSP3 (NTRAK,ITKDM,PTRAK,SEVAL,ASEVEC,IERR)
*. INPUT     : NTRAK    Total number of particles
*. INPUT     : IPTK     First dimension of PTRAK array
*. INPUT     : PTRAK    Particle 3-momentum array: Px,Py,Pz
*. OUTPUT    : SEVAL    Sphericity Eigenvalues
*. OUTPUT    : ASEVEC   Associated Sphericity Eigenvectors;
*. OUTPUT    : IERR     = 0 if all is OK ;   = -1 otherwise
*.
*. Note:
*. (i)    Sphericity  = (3./2.) * (SEVAL (1) + SEVAL (2))
*. (ii)   Aplanarity  = (3./2.) *  SEVAL (1)
*. (iii)  SEVAL (1) < SEVAL (2) < SEVAL (3)
*. (iv)   ASEVEC (*,3) is the principal sphericity axis
*.
*. CALLS     : DSYEV (in the LAPACK library that ships with CERNLIB)
*. CALLED    : By User
*.
*. AUTHOR    :  J.W.Gary
*. CREATED   :  18-Mar-88
*. LAST MOD  :  22-Sep-00
*.
*. Modification Log.
*.
*. 27-May-97 M.Schroder Preset IERR
*. 04-Apr-97 : Rewrote to use the LAPACK eigenvalue routine to fix the
*.             instability when differnece between eigenvalues is large.
*.             D. Hutchcroft
*. 22-Sep-00 R.Yaari    Use double precision copy of PTRAK for calculations
*.                      This results in a limitation of the array size used.
*.
*.*********************************************************
*
*
      INTEGER NTRAK
      INTEGER IPTK, MXTRAK
      PARAMETER (MXTRAK = 200)
      REAL PTRAK(IPTK,*)
      DOUBLE PRECISION DPTRAK(IPTK,MXTRAK)
      REAL SEVAL(*)
      REAL ASEVEC(3,*)
      INTEGER IERR
*
* Integers for the LAPACK routine
      INTEGER N
*     order of the matrix A
      INTEGER LDA
*     order of the first index of A
      INTEGER LWORK
*     no of elements in work (should be 64*N)
      INTEGER IFAIL
* returns <0 if inputs wrong, >0 if fails numerically

* Doubles for the LAPACK routine
      DOUBLE PRECISION A(3,3)
*     Matrix to be diagonialised
      DOUBLE PRECISION W(3)
*     Array of eigenvalues
      DOUBLE PRECISION WORK(192)
*     temp array
*
* Character strings for the LAPACK routine
      CHARACTER*1 JOBZ
*     'N' if only eigenvalues, 'V' if also calculates the eigenvectors
      CHARACTER*1 UPLO
*     'U' if uses upper diagonal, 'L' if lower
*
* routine
      EXTERNAL DSYEV
*
* local
      INTEGER I,J,K
      DOUBLE PRECISION PSQI
*
      IERR = 0
      IF (NTRAK.LE.1.OR.NTRAK.GT.MXTRAK) THEN
          WRITE (6,FMT='('' PXLAJSP3: Error, NTRAK ='',I4,'', 
     +       out of bounds'')') NTRAK
          IERR = -1
          GO TO 990
      END IF
      DO 100, I = 1, NTRAK
        DO 110, J = 1, IPTK
          DPTRAK(J,I) = PTRAK(J,I)
 110    CONTINUE
 100  CONTINUE
 
* Null the Sphericity Matrix
      DO 200 I=1,3
         DO 210 J=1,3
            A(I,J)=0.D0
 210     CONTINUE
 200  CONTINUE
* Fill sphereicity matrix
      PSQI=0.D0
      DO 220 I=1,NTRAK
         PSQI=PSQI+(DPTRAK(1,I)**2+DPTRAK(2,I)**2+DPTRAK(3,I)**2)
         DO 230 J=1,3
            DO 240 K=1,3
               A(J,K)=A(J,K)+DPTRAK(J,I)*DPTRAK(K,I)
 240        CONTINUE
 230     CONTINUE
 220  CONTINUE
*
      DO 250 I=1,3
         DO 260 J=1,3
            A(I,J)=A(I,J)/PSQI
 260     CONTINUE
 250  CONTINUE
*
* Set up the input for a 3x3 matrix to dsyev
      N=3
      LDA=3
      LWORK=192
      IFAIL=0
      JOBZ='V'
      UPLO='U'

      CALL DSYEV(JOBZ,UPLO,N,A,LDA,W,WORK,LWORK,IFAIL)
      IF (IFAIL.LT.0) THEN
         PRINT *,'ngjps3 ifail = 1 wrong arguments'
         IERR=1
         STOP
      ENDIF
      IF (IFAIL.GT.0) THEN
         PRINT *,'Diagonalisation failed numerically in PXLAJSP3'
         IERR=2
         GOTO 990
      ENDIF
*
* copy eigenvalues to seval
      DO 270 I=1,3
         SEVAL(I)=REAL(W(I))
 270  CONTINUE
* copt eigenvectors to asevec
      DO 280 I=1,3
         DO 290 J=1,3
            ASEVEC(I,J)=REAL(A(I,J))
 290     CONTINUE
 280  CONTINUE
 990  CONTINUE

      END

CDECK  ID>, PXLSP3.
      SUBROUTINE PXLSP3 (NTRAK,ITKDM,PTRAK,EVAL,EVEC,IERR)
*.*********************************************************
*. ------
*. PXLSP3
*. ------
*. A routine to evaluate the momentum tensor, eigenvectors,
*. and eigenvalues belonging to the C parameter family.
*.
*. Usage     :
*.
*.      INTEGER  ITKDM,MXTRAK
*.      PARAMETER  (ITKDM=3.or.more,MXTRAK=1.or.more)
*.      INTEGER NTRAK,IERR
*.      REAL  PTRAK (ITKDM,MXTRAK),
*.     +      EVEC (3,3.or.more),
*.     +      EVAL (3.or.more)
*.
*.      NTRAK = 1.to.MXTRAK
*.      CALL PXLSP3 (NTRAK,ITKDM,PTRAK,EVAL,EVEC,IERR)
*.
*. INPUT     : NTRAK    Total number of particles
*. INPUT     : ITKDM    First dimension of PTRAK array
*. INPUT     : PTRAK    Particle 3-momentum array: Px,Py,Pz
*. OUTPUT    : EVAL     C Parameter eigenvalues
*. OUTPUT    : EVEC     Associated C Eigenvectors;
*. OUTPUT    : IERR     = 0 if all is OK ;   = -1 otherwise
*.
*. Note:
*. (i)    C  = 3 * (EVAL(1)*EVAL(2) + EVAL(2)*EVAL(3) +
*.                  EVAL(3)*EVAL(1))
*. (ii)   D  = 27 * EVAL(1)*EVAL(2)*EVAL(3)
*. (iii)  EVAL (1) < EVAL (2) < EVAL (3)
*.
*. CALLS     : PXDIAM
*. CALLED    : By User
*.
*. Author    : Sukhpal Sanghera, Carleton U, Ottawa.
*. Created   : 24-Sep-89
*.
*. Modification Log.
*. 12-May-97 D. Chrisman, remove declaration of unused variables
*.   P2SUM and ISW.
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  IOLUN
      PARAMETER  (IOLUN=6)
      INTEGER  NTRAK,ITKDM,IP,IX1,IX2,IERR,ICNT,IVMAX,NDIM
      REAL  PTRAK (ITKDM,*),EVEC (3,*),EVAL (*),SVBUFF (3)
      DOUBLE PRECISION  PMATRX (3,3),SPBUFF (3,3),WORK1 (3,3),
     +                  WORK2 (3,3),WORK3 (3,3),P1SUM
      REAL  EVMAX,P2AB,P1AB
      CHARACTER*1  CDONE (3)
      LOGICAL  LPRT
      DATA  LPRT / .FALSE. /

      IERR = 0
      IF (NTRAK.LE.1) THEN
          WRITE (IOLUN,FMT='('' PXLSP3: Error, NTRAK ='',I4)') NTRAK
          IERR = -1
          GO TO 990
      END IF
*  construct momentum tensor
*  --------- -------- ------
      P1SUM = 0.0D0
      DO 100 IX1 = 1,3
          DO 110 IX2 = 1,3
              PMATRX (IX1,IX2) = 0.0D0
 110      CONTINUE
 100  CONTINUE
      DO 120 IP = 1,NTRAK
          P2AB  = PTRAK(1,IP)**2 + PTRAK(2,IP)**2 + PTRAK(3,IP)**2
          P1AB  = SQRT(P2AB)
          P1SUM = P1SUM + P1AB
          DO 130 IX1 = 1,3
              DO 140 IX2 = 1,3
                  PMATRX (IX2,IX1) = PMATRX (IX2,IX1)
     +             + PTRAK (IX1,IP) * PTRAK (IX2,IP)/P1AB
 140          CONTINUE
 130      CONTINUE
 120  CONTINUE
      DO 160 IX1 = 1,3
          DO 150 IX2 = 1,3
              PMATRX (IX1,IX2) = PMATRX (IX1,IX2) / P1SUM
 150      CONTINUE
 160  CONTINUE
*  diagonalize matrix
*  ----------- ------
      NDIM = 3
      CALL PXDIAM (NDIM,PMATRX,SPBUFF,IERR,WORK1,WORK2,WORK3)
      IF (IERR.NE.0) GO TO 990
*  Eigenvalues are the diagonal elements of the diagonalized matrix
*  ----------- --- --- -------- -------- -- --- ------------ ------
      DO 200  IX1 = 1,3
          CDONE (IX1) = 'U'
          SVBUFF (IX1) = PMATRX (IX1,IX1)
 200  CONTINUE
*  put the eigenvectors/values into standard order
*  --- --- ------------ ------ ---- -------- -----
      ICNT = 0
 205  ICNT  = ICNT + 1
          EVMAX = 99999.
          DO 210  IX1 = 1,3
              IF (SVBUFF (IX1).LT.EVMAX
     +            .AND.CDONE (IX1).NE.'D') THEN
                  EVMAX = SVBUFF (IX1)
                  IVMAX = IX1
              END IF
 210      CONTINUE
          CDONE (IVMAX) = 'D'
          EVAL (ICNT) = SVBUFF (IVMAX)
          DO 220 IX1 = 1,3
              EVEC (IX1,ICNT) = SPBUFF (IX1,IVMAX)
 220      CONTINUE
      IF (ICNT.LT.3) GO TO 205
      IF (LPRT) THEN
          WRITE (IOLUN,FMT='(
     +           '' PXLSP3: EVAL, EVEC ='',3(/5X,4E12.4))')
     +           (EVAL (IX1),(EVEC (IX2,IX1),IX2=1,3),IX1=1,3)
      END IF

 990  RETURN
      END
CDECK  ID>, PXDIAM.
      SUBROUTINE PXDIAM (NDIM,DUMMTX,EIGVEC,IERR,UMATRX,WORK2,WORK3)
*.*********************************************************
*. ------
*. PXDIAM
*. ------
*. Routine to diagonalize a real, symmetric matrix, i.e. to find
*. its eigenvalues and eigenvectors. This routine diagonalizes
*. matrices of arbitrary order.
*. The technique employed is the Jacobi iterative method.
*. Briefly, a unitary transformation is constructed to "annihilate,"
*. i.e. set to zero, all off-diagonal elements of the matrix above
*. a certain threshold.  The iterations are necessary, first of all,
*. to annihilate all the off diagonal elements and, second of all,
*. because each subsequent annihilation messes up the annihilation
*. due to a previous transformation (to a certain extent).
*. The diagonalization is mathematically guaranteed to converge,
*. however.
*. By following this procedure one therefore solves the equation
*.                 (Ut) M (U) = D
*. for the unitary matrix U and for the diagonal matrix D, where
*. Ut is the transpose of U and M is the input matrix to be
*. diagonalized.
*. The eigenvectors of M are the columns of U;
*. the eigenvalues of M are the diagonal elements of D.
*. Note:  This routine operates on  DOUBLE PRECISION MATRICES
*. Usage     :
*.
*.      INTEGER  NDIM
*.      PARAMETER  (NDIM=1.or.more)
*.      INTEGER  IERR
*.      DOUBLE PRECISION  DUMMTX (NDIM,NDIM),
*.     +                  UMATRX (NDIM,NDIM),
*.     +                  WORK2  (NDIM,NDIM),
*.     +                  WORK3  (NDIM,NDIM),
*.     +                  EIGVEC (NDIM,NDIM)
*.
*.      CALL PXDIAM (NDIM,DUMMTX,EIGVEC,IERR,UMATRX,WORK2,WORK3)
*.
*. INPUT     : NDIM     The order of the NDIM x NDIM matrix
*. IN/OUTPUT : DUMMTX   Input: the matrix to be diagonalized
*.                      Output: the diagonalized matrix
*. OUTPUT    : EIGVEC   The eigenvectors of the matrix
*. OUTPUT    : IERR     = 0 if all is OK ;   = -1 otherwise
*. DUMMY     : UMATRX   Dummy working space, dimension NDIM x NDIM
*. DUMMY     : WORK2    Dummy working space, dimension NDIM x NDIM
*. DUMMY     : WORK3    Dummy working space, dimension NDIM x NDIM
*.
*. CALLS     : PXUNIM,PXMULM
*. CALLED    : PXJSP3
*.
*. AUTHOR    :  J.W.Gary
*. CREATED   :  18-Mar-88
*. LAST MOD  :  18-Mar-88
*.
*. Modification Log.
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  IOLUN
      PARAMETER  (IOLUN=6)
      INTEGER  MXITER
      PARAMETER  (MXITER=100)
      DOUBLE PRECISION  XXMIN
      PARAMETER  (XXMIN=0.0D0)
      REAL  XISTOP
      PARAMETER  (XISTOP=0.0001)
      INTEGER  NDIM,IERR,IX1,IX2,IX3,IX4,NITER
      DOUBLE PRECISION
     +      DUMMTX (NDIM,NDIM),UMATRX (NDIM,NDIM),
     +      EIGVEC (NDIM,NDIM),WORK2 (NDIM,NDIM),
     +      WORK3  (NDIM,NDIM)
      DOUBLE PRECISION  XXCUT,AX0,AX1,COSPHI,S2THET,
     +                  STHETA,CTHETA
      CHARACTER*6  CDIAG,CSTAT
      LOGICAL  LPRT
      DATA  LPRT / .FALSE. /

      IERR = 0
*   construct the initial threshold for annihilation
*   --------- --- ------- --------- --- ------------
      XXCUT = 0.D0
      DO 180  IX1 = 1,NDIM
          DO 170  IX2 = IX1+1,NDIM
              XXCUT = XXCUT + DUMMTX (IX1,IX2)**2
 170      CONTINUE
 180  CONTINUE
      XXCUT = DSQRT (MAX (XXMIN,2.*XXCUT)) / FLOAT (NDIM)
*  start iteration
*  ----- ---------
      NITER = 0
      CDIAG = 'NODIAG'
 300  CSTAT = 'INIT'
*       annihilate off-diagonal elements above threshold
*       ---------- --- -------- -------- ----- ---------
          DO 380 IX1 = 1,NDIM
              DO 370  IX2 =  IX1+1,NDIM
                  IF (DABS (DUMMTX (IX1,IX2)).GT.XXCUT) THEN
                      NITER = NITER + 1
                      CSTAT = 'AGAIN'
*                   construct unitary matrix
*                   --------- ------- ------
                      DO 320 IX3 = 1,NDIM
                          DO 310 IX4 = 1,NDIM
                              UMATRX (IX3,IX4) = 0.D0
                              IF (IX3.EQ.IX4) UMATRX (IX3,IX4) = 1.
 310                      CONTINUE
 320                  CONTINUE
                      AX0 = 2.* DUMMTX (IX1,IX2)
                      AX1 = DUMMTX (IX1,IX1) - DUMMTX (IX2,IX2)
                      COSPHI = AX1 / DSQRT (AX0**2 + AX1**2)
                      S2THET = (1.-COSPHI) /2.
                      IF (S2THET.LT.0.) THEN
                          WRITE (IOLUN,FMT='(
     +                           '' PXDIAM:  Error,  S2THET ='',
     +                           E12.4)') S2THET
                          IERR = -1
                          RETURN
                      END IF
                      STHETA = DSQRT (S2THET)
                      CTHETA = DSQRT (1.-S2THET)
                      UMATRX (IX1,IX1) =   CTHETA
                      UMATRX (IX2,IX2) =   CTHETA
                      UMATRX (IX1,IX2) =   STHETA
                      UMATRX (IX2,IX1) = - STHETA
                      IF (LPRT) WRITE (IOLUN,FMT='(
     +                    ''   NITER ='',I5/
     +                    ''   IX1,IX2,XXCUT,STHETA,CTHETA ='',
     +                    2I5,3E12.4/
     +                    ''   UMATRX =''/3(10X,3E12.4/))')
     +                    NITER,IX1,IX2,XXCUT,STHETA,CTHETA,
     +                    ((UMATRX (IX3,IX4),IX4=1,NDIM),IX3=1,NDIM)
*                   perform unitary transformation
*                   ------- ------- --------------
                      CALL PXUNIM (NDIM,DUMMTX,UMATRX,WORK2,WORK3)
                      IF (LPRT) WRITE (IOLUN,FMT='(
     +                    '' PXDIAM:  DUMMTX =''/3(10X,3E12.4/))')
     +                    ((DUMMTX (IX3,IX4),IX4=1,NDIM),IX3=1,NDIM)
*                   update eigenvector matrix
*                   ------ ----------- ------
                      IF (NITER.EQ.1) THEN
                          DO 340 IX3 = 1,NDIM
                              DO 330  IX4 = 1,NDIM
                                  EIGVEC (IX3,IX4)
     +                              = UMATRX (IX3,IX4)
 330                          CONTINUE
 340                      CONTINUE
                      ELSE
                          CALL PXMULM (NDIM,EIGVEC,UMATRX,WORK2)
                          DO 360 IX3 = 1,NDIM
                              DO 350  IX4 = 1,NDIM
                                  EIGVEC (IX3,IX4)
     +                              = WORK2 (IX3,IX4)
 350                          CONTINUE
 360                      CONTINUE
                      END IF
                  END IF
 370          CONTINUE
 380      CONTINUE
*       cut off after maximum number of iterations
*       --- --- ----- ------- ------ -- ----------
          IF (NITER.GT.MXITER.OR.
     +       (DABS (CTHETA).EQ.1..AND.STHETA.EQ.0.)) THEN
              CDIAG = 'DIAG'
              CSTAT = 'QUIT'
          END IF
*       repeat until all off-diagonal elements below threshold
*       ------ ----- --- --- -------- -------- ----- ---------
          IF (CSTAT.EQ.'AGAIN') GO TO 300
*       criteron for whether matrix is sufficiently diagonal
*       -------- --- ------- ------ -- ------------ --------
          IF (CSTAT.EQ.'QUIT') THEN
          ELSE IF (XXCUT.LE.XISTOP) THEN
              CDIAG = 'DIAG'
          ELSE
              XXCUT = XXCUT / FLOAT (NDIM)
          END IF
      IF (CDIAG.NE.'DIAG') GO TO 300
*  matrix now diagonalized (I hope !!!)
*  ------ --- ------------  - ----
      IF (LPRT) WRITE (IOLUN,FMT='(
     +    '' PXDIAM:  EIGVEC =''/3(10X,3E12.4/))')
     +      ((EIGVEC (IX3,IX4),IX4=1,NDIM),IX3=1,NDIM)

      RETURN
      END
CDECK  ID>, PXUNIM.
      SUBROUTINE PXUNIM (NDIM,XMTX,UMX,UMT,WORK3)
*.*********************************************************
*. ------
*. PXUNIM
*. ------
*. Routine to perform a unitary transfomation of a real,
*. symmetric matrix.
*. Note:  This routine operates on DOUBLE PRECISION MATRICES
*. Usage     :
*.
*.      INTEGER  NDIM
*.      PARAMETER  (NDIM=1.or.more)
*.      DOUBLE PRECISION  XMTX (NDIM,NDIM),
*.     +                  UMX  (NDIM,NDIM),
*.     +                  UMT  (NDIM,NDIM),
*.     +                  WORK3  (NDIM,NDIM)
*.
*.      CALL PXUNIM (NDIM,XMTX,UMX,UMT,WORK3)
*.
*. INPUT     : NDIM    The order of the NDIM x NDIM matrix
*. IN/OUTPUT : XMTX    Input:  the matrix to be transformed
*.                     Output: the transformed matrix
*. INPUT     : UMX     The unitary transformation matrix
*. DUMMY     : UMT     Working space, dimension NDIM x NDIM
*. DUMMY     : WORK3   Working space, dimension NDIM x NDIM
*.
*. CALLS     : PXMULM
*. CALLED    : PXDIAM
*.
*. AUTHOR    :  J.W.Gary
*. CREATED   :  18-Mar-88
*. LAST MOD  :  18-Mar-88
*.
*. Modification Log.
*. 12-May-97 D. Chrisman, remove declaration of unused variable IX3.
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  NDIM,IX1,IX2
      DOUBLE PRECISION  XMTX (NDIM,NDIM),UMX (NDIM,NDIM),
     +                  UMT (NDIM,NDIM),WORK3 (NDIM,NDIM)

*  transpose of the unitary matrix
*  --------- -- --- ------- ------
      DO 180  IX1 = 1,NDIM
          DO 170  IX2 = 1,NDIM
              UMT (IX2,IX1) = UMX (IX1,IX2)
 170      CONTINUE
 180  CONTINUE
*  perform unitary transformation
*  ------- ------- --------------
      CALL PXMULM (NDIM,XMTX,UMX,WORK3)
      CALL PXMULM (NDIM,UMT,WORK3,XMTX)

      RETURN
      END
CDECK  ID>, PXMULM.
      SUBROUTINE PXMULM (NDIM,XMX1,XMX2,XMXX)
*.*********************************************************
*. ------
*. PXMULM
*. ------
*. Routine to perform matrix multiplication
*. Note:  This routine operates on DOUBLE PRECISION MATRICES
*. Usage     :
*.
*.      INTEGER  NDIM
*.      PARAMETER  (NDIM=1.or.more)
*.      DOUBLE PRECISION  XMX1 (NDIM,NDIM),
*.     +                  XMX2 (NDIM,NDIM),
*.     +                  XMXX (NDIM,NDIM)
*.
*.      CALL PXMULM (NDIM,XMX1,XMX2,XMXX)
*.
*. INPUT     :  NDIM       The order of the NDIM x NDIM matrices
*. INPUT     :  XMX1       1st matrix in the product (MX1) x (MX2)
*. INPUT     :  XMX2       2nd matrix in the product (MX1) x (MX2)
*. OUTPUT    :  XMXX       The result =  (MX1) x (MX2)
*.
*. CALLS     : none
*. CALLED    : PXDIAM,PXUNIM
*.
*. AUTHOR    :  J.W.Gary
*. CREATED   :  18-Mar-88
*. LAST MOD  :  18-Mar-88
*.
*. Modification Log.
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  NDIM,IX1,IX2,IX3
      DOUBLE PRECISION  XMX1 (NDIM,NDIM),XMX2 (NDIM,NDIM),
     +                  XMXX (NDIM,NDIM)
      DO 180  IX1 = 1,NDIM
          DO 170  IX2 = 1,NDIM
              XMXX (IX1,IX2) = 0.D0
              DO 160  IX3 = 1,NDIM
                  XMXX (IX1,IX2) = XMXX (IX1,IX2)
     +               + XMX1 (IX1,IX3) * XMX2 (IX3,IX2)
 160          CONTINUE
 170      CONTINUE
 180  CONTINUE
      RETURN
      END
CDECK  ID>, PXTTH3.
      SUBROUTINE PXTTH3 (NTRAK,ITKDM,PTRAK,THR,TVEC,IERR)
*.*********************************************************
*. ------
*. PXTTH3
*. ------
*. Routine to determine the principle thrust axis and
*. thrust value of an event using the Tasso algorithm.
*. Usage     :
*.
*.      INTEGER  ITKDM,MXTRAK
*.      PARAMETER  (ITKDM=3.or.more,MXTRAK=1.or.more)
*.      INTEGER NTRAK,IERR
*.      REAL  PTRAK (ITKDM,MXTRAK),
*.     +      TVEC (3.or.more)
*.      REAL  THR
*.
*.      NTRAK = 1.to.MXTRAK
*.      CALL  PXTTH3 (NTRAK,ITKDM,PTRAK,THR,TVEC,IERR)
*.
*. INPUT     : NTRAK    Total number of particles
*. INPUT     : ITKDM    First dimension of PTRAK array
*. INPUT     : PTRAK    Particle momentum array: Px,Py,Pz
*. OUTPUT    : THR      The thrust value
*. OUTPUT    : TVEC     The thrust vector
*. OUTPUT    : IERR     = 0 if all is OK ;   = -1 otherwise
*.
*. CALLS     : none
*. CALLED    : By User
*.
*. AUTHOR    :  D. Lueke (Tasso)
*. CREATED   :  25-Jun-79
*. LAST MOD  :  14-Nov-84
*.
*. Modification Log.
*. 01-Jul-88   J.W.Gary  Integrate into PX library
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  IFIRST,ITKDM,NTRAK,NA1,IERR,
     +         I,J,K,L,M,K1,IX
      REAL  PTRAK (ITKDM,*),PTOT (3),PT (3),PTM (3),
     +      PC (3,4),TVEC (*)
      REAL  T,U,TMAX,THR,PP,SP
      DOUBLE PRECISION  AX,BX
      DATA  IFIRST / 0 /

      IERR = 0
*  no particles, skip event
*  -- ---------  ---- -----
      IF (NTRAK.LT.0) THEN
          IERR = -1
          GO TO 300
      END IF
*  one particle, buffer to output
*  --- --------  ------ -- ------
      IF (NTRAK.EQ.1) THEN
          THR = 1.
          TVEC (1) = PTRAK (1,1)
          TVEC (2) = PTRAK (2,1)
          TVEC (3) = PTRAK (3,1)
          GO TO 300
      END IF
      PTM (1) = 0.
      PTM (2) = 0.
      PTM (3) = 0.
      PTOT (1) = 0.
      PTOT (2) = 0.
      PTOT (3) = 0.
      SP = 0.
      DO 20 K = 1,NTRAK
          PP = SQRT (PTRAK (1,K)**2 + PTRAK (2,K)**2
     +             + PTRAK (3,K)**2)
          SP = SP + PP
          PTOT (1) = PTOT (1) + PTRAK (1,K)
          PTOT (2) = PTOT (2) + PTRAK (2,K)
          PTOT (3) = PTOT (3) + PTRAK (3,K)
   20 CONTINUE
      PTOT (1) = 0.5 * PTOT (1)
      PTOT (2) = 0.5 * PTOT (2)
      PTOT (3) = 0.5 * PTOT (3)
      TMAX = 0.
      NA1 = 2
      DO 200 K = NA1,NTRAK
          K1 = K - 1
          DO 190  J = 1,K1
*           cross product
*           ----- -------
              TVEC (1) = PTRAK (2,J) * PTRAK (3,K)
     +                 - PTRAK (3,J) * PTRAK (2,K)
              TVEC (2) = PTRAK (3,J) * PTRAK (1,K)
     +                 - PTRAK (1,J) * PTRAK (3,K)
              TVEC (3) = PTRAK (1,J) * PTRAK (2,K)
     +                 - PTRAK (2,J) * PTRAK (1,K)
              PT (1) = -PTOT (1)
              PT (2) = -PTOT (2)
              PT (3) = -PTOT (3)
              DO 100 L = 1,NTRAK
                  IF (L.EQ.K) GO TO 100
                  IF (L.EQ.J) GO TO 100
                  U = PTRAK (1,L) * TVEC (1)
     +              + PTRAK (2,L) * TVEC (2)
     +              + PTRAK (3,L) * TVEC (3)
                  IF (U.LT.0.) GO TO 100
                  PT (1) = PT (1) + PTRAK (1,L)
                  PT (2) = PT (2) + PTRAK (2,L)
                  PT (3) = PT (3) + PTRAK (3,L)
  100         CONTINUE
              DO 110 I = 1,3
                  PC (I,1) = PT (I)
                  PC (I,2) = PT (I) + PTRAK (I,K)
                  PC (I,3) = PT (I) + PTRAK (I,J)
                  PC (I,4) = PC (I,3) + PTRAK (I,K)
  110         CONTINUE
              DO 180 M = 1,4
                  T = PC (1,M) * PC (1,M) + PC (2,M) * PC (2,M)
     +              + PC (3,M) * PC (3,M)
                  IF (T.LE.TMAX) GO TO 180
                  TMAX = T
                  PTM (1) = PC (1,M)
                  PTM (2) = PC (2,M)
                  PTM (3) = PC (3,M)
  180         CONTINUE
  190     CONTINUE
  200 CONTINUE
      THR = 2.* SQRT (TMAX) / SP
      TVEC (1) = PTM (1)
      TVEC (2) = PTM (2)
      TVEC (3) = PTM (3)
  300 CONTINUE
      AX = 0.0
      DO 320  IX = 1,3
          AX = AX + TVEC (IX) * TVEC (IX)
  320 CONTINUE
      BX = DSQRT (AX)
      IF (BX.NE.0.0) THEN
          BX = 1.0 / BX
      ELSE
          IERR = -1
          RETURN
      END IF
      DO 340 IX = 1,3
          TVEC (IX) = BX * TVEC (IX)
  340 CONTINUE
      RETURN
      END
CDECK  ID>, PXLTH4.
      SUBROUTINE PXLTH4 (NTRAK,ITKDM,PTRAK,THRVAL,THRVEC,IERR)
*.*********************************************************
*. ------
*. PXLTH4
*. ------
*. Routine to determine the Thrust Principal, Major and
*. Minor axes and values using the Jetset algorithm.
*. The implementation here is without a common block, however.
*. Thus this routine may be used regardless of whether the
*. Jetset6.3 or Jetset7.1 library might be linked.  It is
*. not necessary to link to Jetset, however.
*. Usage     :
*.
*.      INTEGER  ITKDM,MXTRAK
*.      PARAMETER  (ITKDM=3.or.more,MXTRAK=1.or.more)
*.      INTEGER NTRAK,IERR
*.      REAL  PTRAK (ITKDM,MXTRAK),
*.     +      THRVEC (3,3.or.more),
*.     +      THRVAL (3.or.more)
*.
*.      NTRAK = 1.to.MXTRAK
*.      CALL  PXLTH4 (NTRAK,ITKDM,PTRAK,THRVAL,THRVEC,IERR)
*.
*. The thrust vectors THRVEC are ordered according to the
*. corresponding thrust values THRVAL such that
*.     THRVAL (1) < THRVAL (2) < THRVAL (3)
*. Thus THRVEC (*,3) is the Thrust Principal axis;
*. Thus THRVEC (*,2) is the Thrust Major axis;
*. Thus THRVEC (*,1) is the Thrust Minor axis;
*.
*. INPUT     : NTRAK    Total number of particles
*. INPUT     : ITKDM    First dimension of PTRAK array
*. INPUT     : PTRAK    Particle momentum array: Px,Py,Pz,E
*. OUTPUT    : THRVAL   Thrust values
*. OUTPUT    : THRVEC   Associated Thrust vectors
*. OUTPUT    : IERR     = 0 if all is OK ;   = -1 otherwise
*.
*. CALLS     : PXLUT3
*. CALLED    : By User
*.
*. AUTHOR    :  J.W.Gary
*. CREATED   :  18-Jun-88
*. LAST MOD  :  04-Feb-89
*.
*. Modification Log.
*. 04-Feb-89  Integrate with PXLUT3  J.W.Gary
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  NRLUDM,IOLUN
      PARAMETER (NRLUDM=1000,IOLUN=6)
      INTEGER  NTRAK,AXIS,IX1,IX2,ITKDM,IERR
      REAL  PTRAK (ITKDM,*),PLUND (NRLUDM,5),
     +      THRVEC (3,*),THRVAL (*)
      REAL  THRUST,OBLATE
      LOGICAL  LPRT
      DATA  LPRT / .FALSE. /

      IERR = 0
      IF (NTRAK.LE.1.OR.NTRAK.GT.NRLUDM) THEN
          IERR = -1
          WRITE (IOLUN,FMT='('' PXLTH4: Error, NTRAK ='',I6/
     +           ''  Max. allowed ='',I6)') NTRAK,NRLUDM
          GO TO 990
      END IF
*  Pack 4-momenta in Jetset format
*  ---- --------- -- ------ ------
      DO 110  IX1 = 1,NTRAK
          DO 100  AXIS = 1,4
              PLUND (IX1,AXIS) = PTRAK (AXIS,IX1)
 100      CONTINUE
 110  CONTINUE
*  Jetset algorithm for Thrust
*  ------ --------- --- ------
      CALL PXLUT3 (NTRAK,NRLUDM,PLUND,THRUST,OBLATE)
      IF (LPRT) WRITE (IOLUN,FMT='('' PXLTH4:  THRUST,'',
     +     ''OBLATE ='',2E12.4)') THRUST,OBLATE
      IF (THRUST.LT.0) THEN
          IERR = -1
          GO TO 990
      END IF
*  Buffer eigenvectors for output
*  ------ ------------ --- ------
      DO 210  IX1 = 1,3
          IX2 = NTRAK + (4 - IX1)
          THRVAL (IX1) = PLUND (IX2,4)
          DO 200  AXIS = 1,3
              THRVEC (AXIS,IX1) = PLUND (IX2,AXIS)
 200      CONTINUE
 210  CONTINUE
      IF (LPRT) THEN
          WRITE (IOLUN,FMT='('' PXLTH4: THRVAL,THRVEC ='',
     +          3(/5X,4E12.4))') (THRVAL (IX1),
     +          (THRVEC (IX2,IX1),IX2=1,3),IX1=1,3)
      END IF

 990  RETURN
      END
CDECK  ID>, PXLUT3.
      SUBROUTINE PXLUT3 (N,NRLUDM,P,THR,OBL)
*.*********************************************************
*. ------
*. PXLUT3
*. ------
*. An "in-house" version of the Jetset thrust finding algorithm
*. which works entirely through an argument list rather than
*. with e.g. the Jetset common blocks.  This routine calculates
*. the standard linear thrust vectors and values. Its operation
*. is entirely decoupled from any MST or MSTJ variables etc.
*. which might be set by a user using Jetset.
*. The main purpose of developing an in-house version of the
*. Jetset thrust algorithm is so as to have a version
*. which is compatible with both Jetset6.3 and Jetset7.1 etc.
*. (because of the change in the Jetset common blocks between
*. these two versions, the Jetset version of this thrust
*. algorithm LUTHRU is version specific).
*.
*. The Jetset thrust algorithm implements an "approximate" method
*. for thrust determination because not all particle combinations
*. are tested.  It is therefore logically possible that the thrust
*. axes and values determined by this routine will correspond
*. to local rather than to absolute maxima of the thrust function.
*. However in practice this is unlikely because several starting
*. points are used and the algorithm iterated to cross check one
*. convergence vs. another.  Thus this routine offers a very fast
*. and in practice quite accurate algorithm for thrust (much faster
*. than so-called "exact" algorithms).
*. Usage     :
*.
*.      INTEGER  NRLUDM
*.      PARAMETER (NRLUDM=1000.or.so)
*.      REAL PLUND (NRLUDM,5)
*.      INTEGER  NTRAK
*.      REAL  THRUST,OBLATE
*.
*.      (define NTRAK, fill PLUND)
*.      CALL PXLUT3 (NTRAK,NRLUDM,PLUND,THRUST,OBLATE)
*.
*. INPUT     : NTRAK    Number of tracks
*. INPUT     : NRLUDM   First dimension of PLUND
*. INPUT     : P        4-momenta in Jetset format
*. OUTPUT    : THRUST   Thrust value
*. OUTPUT    : OBLATE   Oblateness value
*.
*. CALLS     : PXANXY,PXPLU3,PXRMX3,PXROF3,PXROB3
*. CALLED    : PXLTH4
*.
*. AUTHOR    : Modified from LUTHRU (T.Sjostrand) by J.W.Gary
*. CREATED   : 31-Jan-89
*. LAST MOD  : 22-Sep-00
*.
*. Modification Log.
*. 04-Feb-89  In-house version for PX library  J.W.Gary
*. 12-Mar-89  Get rid of calls to RLU          J.W.Gary
*. 27-Nov-95 M.Schroder  Clear part of the array P above tracks
*. 05-May-97 D.Chrisman  Remove declaration of unused variable
*.                       SG and function RLU.
*. 22-Sep-00 R.Yaari     Add double prec. calc. for Track ordering and P
*.                       calculations
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  N,NP,MSTU44,MSTU45,ILC,ILD,ILF,ILG,I,J,
     +         IAGR,NC,IPP,IERR,NRLUDM
      DOUBLE PRECISION DPP(3),PARU48,DTDS,DTDI(3),TPR(3),THP,THPS,DTEMP
      REAL  P (NRLUDM,*),TDI (3),PVEC (3),
     +      RVEC (3),RMX (3,3)
      REAL  PS,PARU42,TDS,SGN,OBL,THR,
     +      PHI,CP,SP
      DATA  PARU42 / 1. /, PARU48 / 0.0001 /,
     +      MSTU44 / 4  /, MSTU45 / 2 /

      IF(2*N+MSTU44+15.GE.NRLUDM-5) THEN
          WRITE (6,FMT='('' PXLUT3: Error, not enough buffer'',
     +           ''space for Thrust calculation'')')
          THR=-2.
          OBL=-2.
          GO TO 990
      ENDIF
C  M.Schroder (these elements are always used, but sometimes not set...)
      DO 50 I = N+1, 2*N+2
          P(I,1) = 0.
          P(I,2) = 0.
          P(I,3) = 0.
          P(I,4) = 0.
          P(I,5) = 0.
   50 CONTINUE
C...Take copy of particles that are to be considered in thrust analysis.
      NP = 0
      PS = 0.
      DO 100 I = 1,N
          NP = NP + 1
          P (N+NP,1) = P (I,1)
          P (N+NP,2) = P (I,2)
          P (N+NP,3) = P (I,3)
          DPP(1)     = P (I,1)
          DPP(2)     = P (I,2)
          DPP(3)     = P (I,3)
C improve selection by using double precision calculation
          P (N+NP,4) = SQRT (DPP(1)**2 +DPP(2)**2 + DPP(3)**2)
          P (N+NP,5) = 1.
          IF (ABS (PARU42-1.).GT.0.001)
     +        P (N+NP,5) = P (N+NP,4)**(PARU42-1.)
          PS = PS + P (N+NP,4) * P (N+NP,5)
  100 CONTINUE
C...Loop over thrust and major. T axis along z direction in latter case.
      DO 280 ILD=1,2
          IF (ILD.EQ.2) THEN
              CALL PXANXY (P (N+NP+1,1),P (N+NP+1,2),PHI,IERR)
              CALL PXPLU3 (N+NP+1,NRLUDM,P,PVEC,'U')
              CP = COS (PHI)
              SP = SIN (PHI)
              CALL PXRMX3 (PVEC,CP,SP,RMX)
              DO 105 IPP = N+1,N+NP+1
                  CALL PXPLU3 (IPP,NRLUDM,P,PVEC,'U')
                  CALL PXROF3 (RMX,PVEC,RVEC)
                  CALL PXPLU3 (IPP,NRLUDM,P,RVEC,'P')
  105         CONTINUE
          ENDIF
C...Find and order particles with highest p (pT for major).
          DO 110 ILF = N+NP+4,N+NP+MSTU44+4
              P (ILF,4) = 0.
  110     CONTINUE
          DO 150 I = N+1,N+NP
C improve ordering by using double precision calculation
              IF (ILD.EQ.2) THEN
                DPP(1) = P(I,1)
                DPP(2) = P(I,2)
                P(I,4) = SQRT (DPP(1)**2 + DPP(2)**2)
              ENDIF
              DO 120 ILF = N+NP+MSTU44+3,N+NP+4,-1
                  IF (P (I,4).LE.P (ILF,4)) GO TO 130
                  DO 115 J=1,5
                      P(ILF+1,J)=P(ILF,J)
  115             CONTINUE
  120         CONTINUE
              ILF = N + NP + 3
  130         DO 140 J=1,5
                  P (ILF+1,J) = P (I,J)
  140         CONTINUE
  150     CONTINUE
C...Find and order initial axes with highest thrust (major).
          DO 160 ILG=N+NP+MSTU44+5,N+NP+MSTU44+15
              P(ILG,4)=0.
  160     CONTINUE
          NC = 2**(MIN (MSTU44,NP) - 1)
          DO 220 ILC=1,NC
              DO 170 J=1,3
                   TDI(J)=0.
                  DTDI(J)=0.D0
  170         CONTINUE
              DO 180 ILF=1,MIN(MSTU44,NP)
                  SGN = P (N+NP+ILF+3,5)
                  IF (2**ILF*((ILC+2**(ILF-1)-1)/2**ILF).GE.ILC)
     +                SGN = -SGN
                  DO 175 J = 1,4-ILD
C SGN is really only 1 or -1. How I love these multiplexed arrays :(
                      DTDI (J) = DTDI (J) + SGN * P (N+NP+ILF+3,J)
                       TDI (J) = DTDI (J)
  175             CONTINUE
  180         CONTINUE
              DTDS = DTDI (1)**2 + DTDI (2)**2 + DTDI (3)**2
               TDS = DTDS
              DO 190 ILG = N+NP+MSTU44+MIN(ILC,10)+4,N+NP+MSTU44+5,-1
                  IF (TDS.LE.P (ILG,4)) GO TO 200
                  DO 185 J=1,4
                      P (ILG+1,J) = P (ILG,J)
  185             CONTINUE
  190         CONTINUE
              ILG=N + NP + MSTU44 + 4
  200         DO 210 J=1,3
                  P (ILG+1,J) = TDI (J)
  210         CONTINUE
              P (ILG+1,4) = TDS
  220     CONTINUE
C...Iterate direction of axis until stable maximum.
          P (N+NP+ILD,4) = 0.
          ILG = 0
  230     ILG = ILG + 1
          THP = 0.
  240     THPS = THP
          DO 250 J=1,3
              IF (THP.LE.1E-10) TDI (J) = P (N+NP+MSTU44+4+ILG,J)
              IF (THP.GT.1E-10) TDI (J) = TPR (J)
              TPR (J) = 0.
  250     CONTINUE
          DO 260 I = N+1,N+NP
              SGN = SIGN (P(I,5),
     +                TDI(1)*P(I,1)+TDI(2)*P(I,2)+TDI(3)*P(I,3))
              DO 255 J = 1,4-ILD
                  TPR (J) = TPR (J) + SGN * P (I,J)
  255         CONTINUE
  260     CONTINUE
          THP = SQRT (TPR (1)**2 + TPR (2)**2 + TPR (3)**2) / PS
          IF (THP.GE.THPS+PARU48) GO TO 240
C...Save good axis. Try new initial axis until a number of tries agree.
          IF (THP.LT.P(N+NP+ILD,4)-PARU48.AND.ILG.LT.MIN(10,NC))
     +          GO TO 230
          IF (THP.GT.P(N+NP+ILD,4)+PARU48) THEN
              IAGR = 0
**JWG              SGN = (-1.)**INT (RLU(0)+0.5)
              SGN = 1.
              DO 270 J=1,3
                  P (N+NP+ILD,J) = SGN * TPR (J) / (PS*THP)
  270         CONTINUE
              P(N+NP+ILD,4) = THP
              P(N+NP+ILD,5) = 0.
          ENDIF
          IAGR = IAGR + 1
          IF (IAGR.LT.MSTU45.AND.ILG.LT.MIN(10,NC)) GO TO 230
  280 CONTINUE
C...Find minor axis and value by orthogonality.
**JWG      SGN = (-1.)**INT (RLU(0)+0.5)
      SGN = 1.
      P (N+NP+3,1) = -SGN * P (N+NP+2,2)
      P (N+NP+3,2) = SGN * P (N+NP+2,1)
      P (N+NP+3,3) = 0.
      THP = 0.
      DO 290 I = N+1,N+NP
          THP = THP + P (I,5)
     +        * ABS (P (N+NP+3,1) * P (I,1) + P (N+NP+3,2) * P (I,2))
  290 CONTINUE
      P (N+NP+3,4) = THP / PS
      P (N+NP+3,5) = 0.
C...Fill axis information. Rotate back to original coordinate system.
      DO 300 ILD = 1,3
          DO 295 J = 1,5
              P (N+ILD,J) = P (N+NP+ILD,J)
  295     CONTINUE
  300 CONTINUE
      DO 305 IPP = N+1,N+3
          CALL PXPLU3 (IPP,NRLUDM,P,PVEC,'U')
          CALL PXROB3 (RMX,PVEC,RVEC)
          CALL PXPLU3 (IPP,NRLUDM,P,RVEC,'P')
  305 CONTINUE
C...Select storing option. Calculate thurst and oblateness.
      THR = P (N+1,4)
      OBL = P (N+2,4) - P (N+3,4)

  990 RETURN
      END

CDECK  ID>, PXPLU3.
      SUBROUTINE PXPLU3 (INDX,NRLUDM,PLUND,PVEC,CHAR)
*.*********************************************************
*. ------
*. PXPLU3
*. ------
*. A utility routine to repack a Jetset 3-momentum as a
*. standard ordered array or vice-versa.  This routine
*. is used to translate between the array conventions
*. of the Jetset thrust algorithm and of the other routines
*. in this library
*. Usage     :
*.
*.      CALL PXPLU3 (INDX,NRLUDM,PLUND,PVEC,CHAR)
*.
*. INPUT     : INDX     The Jetset vector number
*. IN/OUT    : NRLUDM   First argument of PLUND
*. IN/OUT    : PLUND    The Jetset 3-momentum array
*. IN/OUT    : PVEC     The input or output array
*. CONTROL   : CHAR     ='U' means unpack Jetset array
*.                      = anything else means pack Jetset array
*.
*. CALLS     : none
*. CALLED    : PXLUT3
*.
*. AUTHOR    :  J.W.Gary
*. CREATED   :  04-Feb-89
*. LAST MOD  :  04-Feb-89
*.
*. Modification Log.
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  INDX,NRLUDM,IX
      REAL  PVEC (*),PLUND (NRLUDM,*)
      CHARACTER*1  CHAR
      DO 120  IX = 1,3
          IF (CHAR.EQ.'U') THEN
              PVEC (IX) = PLUND (INDX,IX)
          ELSE
              PLUND (INDX,IX) = PVEC (IX)
          END IF
 120  CONTINUE
      RETURN
      END
CDECK  ID>, PXPLU5.
      SUBROUTINE  PXPLU5 (IFST,ILST,NLUPDM,PLUND,NTRKDM,PTRK,COPT)
*.*********************************************************
*. ------
*. PXPLU5
*. ------
*. Routine to pack or unpack the Jetset "P array," which is packed as
*. P (itrak,ix),ix=1,5 = P [(itrak,(Px,Py,Pz,E,M)], into a standard
*. ordered 5-vector array PTRK, i.e. PTRK [(Px,Py,Pz,E,M),itrak].
*. This routine works with an argument list rather than directly
*. with the Jetset common block; thus it can be used with any version
*. of Jetset (JETSET63, JETSET71, etc.).
*.
*. INPUT     : IFST    First Jetset vector to copy
*. INPUT     : ILST    Last Jetset vector to copy
*. INPUT     : NLUPDM  1st dimension of Jetset "P" array
*. IN/OUTPUT : PLUND   The Jetset "P" array from /LUJETS/
*. INPUT     : NTRKDM  1st dimension of PTRK (= 5 or more)
*. IN/OUTPUT : PTRK    The standard ordered array
*. INPUT     : COPT    A switch between packing or unpacking
*.                     COPT = 'P' for packing PTRK into PLUND
*.                      = anything else for packing PLUND into PTRK
*.
*. CALLS:  none
*. CALLED: Various
*.
*. AUTHOR    :  J.W.Gary
*. CREATED   :  04-Feb-88
*. LAST MOD  :  04-Feb-88
*.
*. Modification Log.
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  NLUPDM,NTRKDM,IFST,ILST,IP,IX,NVEC
      REAL  PLUND (NLUPDM,*),PTRK (NTRKDM,*)
      CHARACTER*1  COPT

      NVEC = ILST - IFST + 1
      IF (COPT.EQ.'P') THEN
          DO 120  IP = 1,NVEC
              DO 110  IX = 1,5
                  PLUND (IFST+IP-1,IX) = PTRK (IX,IP)
 110          CONTINUE
 120      CONTINUE
      ELSE
          DO 140  IP = 1,NVEC
              DO 130  IX = 1,5
                  PTRK (IX,IP) = PLUND (IFST+IP-1,IX)
 130          CONTINUE
 140      CONTINUE
      END IF

      RETURN
      END
CDECK  ID>, PXYCLU.
C===================================================================
C
C  CODE FOR YCLUS JET FINDING ALGORITHM, FEATURING THE E0-, P-, P0-
C AND THE E-VARIANTS OF THE ORIGINAL JADE JET FINDER, AS WELL AS THE
C        NEW DURHAM (D) AND GENEVA (G) JET FINDING SCHEMES.
C
C REFERENCE:  SEE "JETS IN Z0 DECAYS", S. BETHKE, OPAL-CR084 AND
C             HD-PY 92/12 (AACHEN QCD WORKSHOP 1992), AND REFS QUOTED
C             THEREIN.
C
C THE YCLUS JET FINDING PACKAGE CONSISTS OF 7 SUBROUTINES.
C INTERFACE ROUTINES TO YCLUS, NAMELY PXJRC4, PXJRZ4, PXJTR4 AND PXYCR4,
C ARE PROVIDED WITH THIS PACKAGE, WHICH FUNCTION EXACTLY LIKE THE OLD
C PXLIB ROUTINES OF THE SAME NAME.
C YCLUS PROVIDES THE JADE JET FINDER VARIANTS E0, P, P0 AND E, AS WELL
C AS THE NEW DURHAM AND THE GENEVA SCHEMES. THESE ROUTINES ARE ABOUT
C FACTORS OF 2 TO 3 FASTER THAN THE OLD PXLIB ROUTINES, FOR AVERAGE
C PARTICLE MULTIPLICITIES AS FOUND IN Z0 EVENTS AT LEP.
C FOR HIGHER MULTIPLICITIES, THE GAIN IN SPEED IS EVEN LARGER!.
C IN ORDER TO MAKE FULL USE OF ALL THE NEW FEATURES OF THE YCLUS PACKAGE
C IT IS RECOMMENDED TO SHIFT TO THE LATTER ONE; THE YCLUS ROUTINES
C ARE EASY AND STRAIGHT FORWARD TO USE; THEY CONTAIN FEWER CALLING
C PARAMETERS AND PROVIDE MORE FEATURES THAN THE PXLIB ROUTINES.
C
C THE SUBROUTINES OF THE YCLUS PACKAGE (IT'S SELF-CONTAINED) ARE:
C
C  YKERN(IMODE,NT,ITKDM,PP,IERR)  RECONSTRUCTS AN EVENT DOWN TO 1-JET.
C                           MUST BE CALLED FIRST FOR EACH EVENT. USEFUL
C                           INFORMATION FOR FURTHER USE AND CALLS IS
C                           STORED IN COMMON /YCL/.
C                           IMODE: JET FINDER MODE (1...4 = JADE-E0, P,
C                                  P0 AND E, RESPECTIVELY; 5=D, 6=G).
C                           NT:    NUMBER OF INPUT PARTICLE 4-VECTORS.
C                           ITKDM: LENGTH OF VECTORS IN ARRAY PP.
C                           PP(ITKDM,*): ARRAY OF PARTICLE 4-MOMENTA.
C                           IERR:  RETURNED ERROR CODE (=0 IF O.K.)
C
C ONCE YKERN WAS CALLED AND IERR=0, THE FOLLOWING ROUTINES MAY BE USED
C IN ORDER TO EXTRACT FURTHER EVENT AND JET INFORMATION; THESE ROUTINES
C UTILIZE THE DATA WHICH WERE GENERATED AND STORED WITHIN YKERN.
C
C  YNJET(YCUT,NJET,IERR):   RETURNS THE NUMBER OF JETS FOR A GIVEN YCUT
C
C  YYJET(NJET,YL,YH,IERR):  RETURNS THE TWO VALUES OF YCUT BETWEEN WHICH
C                           THE EVENT IS CLASSIFIED AS NJET EVENT; YL<YH
C
C  YAXES(NJET,PNJ,IERR):    RETURNS THE JET AXES IF EVENT IS CLASSIFIED
C                           AS NJET EVENT (NJET=1 ... 10).
C                           PNJ(IL,IV): ARRAY OF 4-VECTORS OF AXES.
C
C  YASSO(NJET,PNJ,BL,IERR): RETURNS THE JET AXES FOR EVENT IF CLASSIFIED
C                           AS NJET EVENT (NJET=1 ... 10), AS WELL
C                           AS A POINTER WHICH, FOR EACH PARTICLE IN PP
C                           (SEE YKERN), POINTS TO THE JET TO WHICH IT
C                           IS ASSOCIATED WITH. JET AXES ARE ORDERED IN
C                           ENERGY:FIRST VECTOR IN PNJ IS MOST ENERGETIC
C                           BL(N): FOR N-TH PARTICLE IN ARRAY PP,
C                                  CONTAINS THE POSITION OF JET IN PNJ
C                                  WHICH PARTICLE N IS ASSOCIATED WITH.
C
C  YREAS(NJET,PNJ,YMIN,BL,IERR): RETURNS JET AXES FOR EVENT CLAS-
C                           SIFIED AS N-JET (SEE YASSO); HOWEVER AFTER
C                           REASSIGNING PARTICLES TO THEIR CLOSEST JET
C                           (BY ANGLE), STARTING WITH THE INITIAL AXES
C                           FROM LAST CALL TO YKERN, AND ITERATING NEW
C                           AXES UNTIL STABILITY IS REACHED. INPUTS (NT,
C                           PP) AS FOR YKERN AND NJET AS FOR YASSO; OUT-
C                           PUTS PNJ AND BL AS FOR YASSO. YMIN GIVES THE
C                           NEW VALUE OF YCUT WHERE EVENT, AFTER REASSI-
C                           GNMENT, FLIPS TO (NJET-1)-CONFIGURATION
C                           (COMPARE TO YREC(NJET-1) OF ORIGINAL CONF.).
C                           YREAS DOES NOT CHANGE COMMON /YCL/.
C
C
C  YTREE(LPRINT,PTR,IERR):  GENERATES COMPLETE EVENT HISTORY AND TREE
C                           STRUCTURE FROM JET RECONSTRUCTION DOWN TO
C                           1-JET, SIMILAR TO TREE INFORMATION AS KNOWN
C                           FROM MONTE CARLO GENERATORS. IF NT IS NUMBER
C                           OF PARTICLES WITH WHICH YKERN WAS CALLED BE-
C                           FORE, THE TREE IS STORED IN ARRAY PTR(10,K),
C                           WHERE K=1 TO NT-1 ARE ALL VECTORS FROM WITH-
C                           IN THE RECOMBINATION STAGE, AND VECTORS K=NT
C                           TO 2*NT-1 ARE THE ORIGINAL, FINAL PARTICLES;
C                           EACH VECTOR CARRIES ADDITIONAL INFORMATION
C                           ABOUT ITS PARENT AND DAUGHTERS, ITS MASS AND
C                           THE VALUE OF Y OF THE NEXT SPLITTING.
C
C COMMON /YCL/YREC(10),PJET(10,10,10),HISTOR(2,NYCLMX)
C        THIS COMMON IS FILLED BY YKERN AND CONTAINS ALL THE INFORMATION
C        WHICH IS REQUIRED FOR FURTHER ANALYSIS IN TYPICAL JET STUDIES.
C        YREC(N)     : VALUE OF YCUT FOR WHICH EVENT FLIPS FROM N+1 TO
C                      N-JET CONFIGURATION.
C        PJET(I,J,K) : 4-VECTORS (I=1..4) OF JET AXIS J WHEN EVENT IS
C                      CLASSIFIED TO HAVE K JETS (I=7 HOLDS # OF PARTI-
C                      CLES ASSOCIATED WITH THIS JET)
C        HISTOR(2,NYCLMX):CONTAINS CODED HISTORY OF RECOMBINATIONS DONE
C                      DOWN TO 1-JET CONFIGURATION; BETTER LEAVE IT
C                      TO YASSO, YREAS AND YTREE TO UNPACK THIS AND TO
C                      PROVIDE ACTUAL PARTICLE-JET ASSOCIATIONS.
C                      (NYCLMX = 250 AT THIS TIME; ENLARGE IF NEEDED).
C
C USE THE INFORMATION IN /YCL/ DIRECTLY OR CALL THE OTHER YXXXX ROUTINES
C FOR CONVENIENT UNPACKING OF INFORMATION.
C
C FOR FURTHER DETAILS, AND FOR THE PX-LIB INTERFACE ROUTINES, SEE THE
C HEADERS OF THE SUBROUTINES THEMSELVES.
C
C SUGGESTIONS/COMPLAINTS/PROBLEMS/DONATIONS TO SIGGI@CERNVM, PLEASE.
C
C HISTORY:
C ========
C 10 NOV 92  S. BETHKE  - 1ST SET-UP OF YCLUS PACKAGE
C 11 NOV 92  S. BETHKE  - REMOVE BUG IN CODE FOR JADE E0 SCHEME
C 12 NOV 92  S. BETHKE  - REMOVE INCONSISTENCIES FOR LOW MULTIPL. EVENTS
C                         (NT<=10) IN YKERN, YASSO
C                       - ADD UTILITY ROUTINE YREAS
C 25 NOV 92  S. BETHKE  - VARIABLE INPUT VECTOR LENGTH IN YKERN.
C                         (!! NOTE !! ONE MORE INPUT PARAMETER TO YKERN)
C                       - REDUCE SIZE OF AND RESTRUCTURE ARRAY "HISTOR"
C                       - ADD UTILITY ROUTINE YTREE.
C                       - STORE INPUT VECTOR ARRAY IN COMMON /YINT/ WHEN
C                         CALLING YKERN; ALL OTHER ROUTINES ARE THEN
C                         CALLED WITHOUT PASSING INPUT VECTORS AGAIN
C                         (NOTE: CALLING PARAMETERS FOR YREAS REDUCED).
C 09 MAR 93  S. BETHKE  - CODE CHANGED TO STANDARD FORTRAN 77
C 05 FEB 96 D. Chrisman - Add a WRITE statement in YYJET to print
C                         a message if (NJET.GT.NTO)
C 05 FEB 96 D. Chrisman - Initialize NJET=1 just before the
C                         "DO 5001 ..."-loop in subroutine YNJET.
C 12 May 97 D. Chrisman - remove declaration of unused variable NPMAX.
C 08 Oct 97 D. Chrisman - Increase NYCLMX from 250 to 500, everywhere.
C 09 Apr 98 D. Chrisman - Add PXCAMJ: CAMBRIDGE JET CLUSTERING ALGORITHM
C 21 JUN 98 D. Chrisman - For LEP2 studies we need to handle more
C                         than 10 jets. The max number of jets allowed
C                         was hard coded in
C                         many of the YKERN subroutines. The parameter
C                         NJETMX was introduced in YKERN, YNJET, YYJET,
C                         YAXES, YASSO, YREAS and YTREE in order to remove
C                         the harded coded limit of 10 jets.
C======================================================================
CDECK  ID>, YKERN.
      SUBROUTINE YKERN(IMODE,NT,ITKDM,PP,IERR)
C
C  JET FINDING ROUTINE A LA THE ORIGINAL JADE (E0) SCHEME, INCLUDING
C  THE E-,P- AND P0-VARIANTS. ALSO FEATURES THE NEW DURHAM (D)
C  AND GENEVA (G) SCHEMES.
C
C  INPUTS: IMODE (JET FINDING SCHEME); PP-ARRAY CONTAINING THE
C  FOUR-MOMENTA OF THE SELECTED PARTICLES, NT SPECIFYING HOW
C  MANY LOCATIONS IN PP ARE FILLED.
C
C  OUTPUTS:  YREC(I) CONTAINS VALUE OF Y WHERE EVENT FLIPS FROM
C  (I+1)-JET TO I-JET; PJET(K,I,J) CONTAINS THE JET AXES FOUR VECTOR
C  (K=1-4) OF JET NUMBER I WHEN THE EVENT IS CLASSIFIED AS J-JET.
C  LOCATION K=7 GIVES THE NUMBER OF PARTICLES ASSIGNED TO THIS JET.
C  NOTE THAT EACH EVENT IS ALWAYS FULLY RECONSTRUCTED DOWN TO
C  1-JET CONFIGURATION.
C  PROGRAM IS SELF-CONTAINED.
C
C  IMODE=1: E0 (=JADE) 2: P  3: P0  4: E  5: DURHAM (KT)  6: GENEVA
C
C  LAST MOD  :  21-Jun-98
C
C  Modification Log.
C  08-Oct-97 D. Chrisman, Increase NYCLMX from 250 to 500.
C  21-Jun-98 D. Chrisman, Want to be able to handle more than 10 jets.
C                         Introduce parameter NJETMX. Use this
C                         in declaration of PJET and YREC in order to remove
C                         hard coded numbers. Remove variable JCHECK and
C                         replace with NJETMX.
C
      IMPLICIT NONE
C     IMPLICIT NONE
      INTEGER NT,ITKDM,NYCLMX,NJETMX,NCALL,NPRINT,I,J,K,IERR,IMODEO
      INTEGER IMODE
      PARAMETER (NYCLMX = 500, NJETMX = 20)
      INTEGER NTO,NJETO,NJJ,IM,JM,NOLD,KK,II,HISTOR(2,NYCLMX)
      REAL PL(7,NYCLMX),Y(NYCLMX,NYCLMX),PINT(10,NYCLMX)
      REAL YREC(NJETMX),EVISO
      REAL PP(ITKDM,*),JADE,D,G,E,EVIS,PVIS,PJET(10,NJETMX,NJETMX),YMINI
      COMMON /YCL/YREC,PJET,HISTOR
      COMMON /YINT/ IMODEO,NTO,NJETO,PINT
      CHARACTER*7 CM
      SAVE NCALL,NPRINT,Y
      DATA NCALL,NPRINT /0,0/
C
C  JET RESOLUTION FUNCTIONS
C
      JADE(I,J) = 2.*PL(4,I)*PL(4,J)*MAX(0.,(1.-
     + (PL(1,I)*PL(1,J)+PL(2,I)*PL(2,J)+PL(3,I)*PL(3,J))/
     + (PL(6,I)*PL(6,J))))
      D(I,J) = 2.*MIN(PL(4,I)*PL(4,I),PL(4,J)*PL(4,J))*MAX(0.,(1.-
     + (PL(1,I)*PL(1,J)+PL(2,I)*PL(2,J)+PL(3,I)*PL(3,J))/
     + (PL(6,I)*PL(6,J))))
      E(I,J) = MAX(0.,(PL(4,I)+PL(4,J))**2-(PL(1,I)+PL(1,J))**2-
     + (PL(2,I)+PL(2,J))**2-(PL(3,I)+PL(3,J))**2)
      G(I,J) = 8.*PL(4,I)*PL(4,J)*MAX(0.,(1.-
     + (PL(1,I)*PL(1,J)+PL(2,I)*PL(2,J)+PL(3,I)*PL(3,J))/
     + (PL(6,I)*PL(6,J))))/(9.*(PL(4,I)+PL(4,J))**2)
C
C INITIALIZE
C
      IERR = -1
      IF(NCALL.LE.0) THEN
        IMODEO = 0
        NTO = 0
        NJETO = 0
      ENDIF
      DO 5001 I=1,NJETMX
        YREC(I) = 0.
 5001 CONTINUE
      NCALL = NCALL + 1
C
C PRINT JET SCHEME
C
      IF(IMODE.NE.IMODEO .AND. NPRINT.LE.7) THEN
        IF(IMODE.EQ.1) THEN
          CM = 'JADE E0'
        ELSEIF(IMODE.EQ.2) THEN
          CM = 'JADE P '
        ELSEIF(IMODE.EQ.3) THEN
          CM = 'JADE P0'
        ELSEIF(IMODE.EQ.4) THEN
          CM = 'JADE E '
        ELSEIF(IMODE.EQ.5) THEN
          CM = 'DURHAM '
        ELSEIF(IMODE.EQ.6) THEN
          CM = 'GENEVA '
        ELSE
          WRITE(6,281) IMODE
 281      FORMAT(/,' ### YKERN: IMODE =',I3,' INVALID; SET TO 1 ###')
          IMODE = 1
          CM = 'JADE E0'
        ENDIF
        PRINT 789, CM
 789    FORMAT(/,8X,54('#'),/,8X,
     +  '# YCLUS JET FINDER WITH ',A7,' RECOMBINATION SCHEME #',/,
     +  8X,54('#'),/)
        NPRINT = NPRINT + 1
      ENDIF
C
C CHECK INPUT PARAMETERS
C
      IF(NT.LE.1) THEN
        PRINT 701, NT
 701    FORMAT(/,' ### YKERN: NUMBER OF INPUT PARTICLES ',I4,' < 2;',
     +  ' NO JET RECONSTRUCTION DONE. ###')
        RETURN
      ENDIF
      IF(NT.GT.NYCLMX) THEN
        PRINT 700, NT, NYCLMX,NYCLMX
  700   FORMAT(/,' #### YKERN: NUMBER OF INPUT PARTICLES ',I4,' > ',I4,
     +  '; SET TO ',I4,/,12X,' INCREASE NYCLMX IF THIS',
     +  ' WARNING OCCURS MORE OFTEN. #### ')
        NT = NYCLMX
      ENDIF
C
C COPY INPUT VECTORS INTO INTERNAL MOMENTUM ARRAY (PL)
C  (POSITION  7 OF EACH VECTOR IN PL WILL BE OVERWRITTEN BY THIS ROUTINE
C   IN ORDER TO RECORD NUMBER OF INITIAL PARTICLES BELONGING TO THIS
C   POSITION [= 1. INITIALLY])
C
      EVIS = 0.
      PVIS = 0.
      DO 5002 I=1,NT
        PL(6,I)=SQRT(PP(1,I)**2 + PP(2,I)**2 + PP(3,I)**2)
        PL(1,I)=PP(1,I)
        PL(2,I)=PP(2,I)
        PL(3,I)=PP(3,I)
        IF(IMODE.EQ.2 .OR. IMODE.EQ.3) THEN
          PL(4,I) = PL(6,I)
        ELSE
          PL(4,I) = PP(4,I)
        ENDIF
        PL(7,I) = 1.
        DO 5003 K=1,7
          PINT(K,I) = PL(K,I)
 5003   CONTINUE
        EVIS=EVIS+PL(4,I)
        PVIS=PVIS+PL(6,I)
 5002 CONTINUE
      NJJ = NT
C
      IF(EVIS.LE.0. .OR. PVIS.GT.1.001*EVIS) THEN
        WRITE(6,283) EVIS,PVIS
 283    FORMAT(' #### YKERN: INCOMPATIBLE SUMS OF ENERGIES',
     +  ' AND/OR MOMENTA:',
     +  /,12X,' SUM(E) = ',F11.4,' SUM(P) = ',F11.4,/,12X,' CHECK',
     +  ' INPUT VECTORS AND/OR ARRAY DIMENSIONS. ####')
        RETURN
      ENDIF
C
      IF(NJJ.LE.NJETMX) THEN
        DO 5004 J=1,NJJ
          DO 5005 I=1,7
            PJET(I,J,NJJ) =  PL(I,J)
 5005     CONTINUE
 5004   CONTINUE
      ENDIF
C
C CALCULATE AND STORE PAIR MASSES
C
       DO 5006 I=1,NJJ-1
         DO 5007 J=I+1,NJJ
           IF(IMODE.EQ.1) THEN
             Y(I,J) = JADE(I,J)
           ELSEIF(IMODE.EQ.5) THEN
             Y(I,J) = D(I,J)
           ELSEIF(IMODE.EQ.6) THEN
             Y(I,J) = G(I,J)
           ELSE
             Y(I,J) = E(I,J)
           ENDIF
 5007    CONTINUE
 5006  CONTINUE
C
C FIND LOCAL MINIMUM OF PAIR MASSES
C
      IM = 0
      JM = 0
 1000 CONTINUE
      YMINI = 2.*EVIS**2
      DO 5008 I=1,NJJ-1
        DO 5009 J=I+1,NJJ
          IF(Y(I,J).LT.YMINI) THEN
           YMINI = Y(I,J)
           IM = I
           JM = J
          ENDIF
 5009   CONTINUE
 5008 CONTINUE
C
      IF(IM.EQ.0 .OR. JM.EQ.0) THEN
        WRITE(6,284)
  284   FORMAT(' #### YKERN: ERROR; NO MINIMUM FOUND IN Y-ARRAY! ####')
        RETURN
      ENDIF
C
C RECOMBINE PARTICLES IM AND JM, STORE AT POSITION IM
C
      PL(1,IM) = PL(1,IM) + PL(1,JM)
      PL(2,IM) = PL(2,IM) + PL(2,JM)
      PL(3,IM) = PL(3,IM) + PL(3,JM)
      PL(6,IM) = SQRT(PL(1,IM)**2 + PL(2,IM)**2
     +         + PL(3,IM)**2)
      IF(IMODE.EQ.2) THEN
        PL(4,IM) = PL(6,IM)
      ELSEIF(IMODE.EQ.3) THEN
        EVISO = EVIS
        EVIS = EVIS-PL(4,IM)-PL(4,JM)+PL(6,IM)
        PL(4,IM) = PL(6,IM)
      ELSE
        PL(4,IM) = PL(4,IM) + PL(4,JM)
      ENDIF
C                  KEEP TRACK OF # OF PARTICLES ASSIGNED TO NEW CLUSTER:
      PL(7,IM) = PL(7,IM) + PL(7,JM)
C                  MOVE LAST PARTICLE IN LIST (NJJ) TO EMPTY SLOT (JM)
      NOLD = 0
      IF(JM.NE.NJJ) THEN
        DO 5010 KK=1,7
          PL(KK,JM) = PL(KK,NJJ)
 5010   CONTINUE
        NOLD = NJJ
      ENDIF
      HISTOR(1,NJJ) = JM
      HISTOR(2,NJJ) = IM
      NJJ = NJJ - 1
C                  REMEMBER JET AXES AND VALUE OF YIJ OF FLIP
      IF(NJJ.LE.NJETMX) THEN
        IF(IMODE.EQ.3) THEN
          YREC(NJJ) = YMINI/EVISO**2
        ELSEIF(IMODE.EQ.6) THEN
          YREC(NJJ) = YMINI
        ELSE
          YREC(NJJ) = YMINI/EVIS**2
        ENDIF
        DO 5011 I=1,NJJ
          DO 5012 K=1,7
            PJET(K,I,NJJ) = PL(K,I)
 5012     CONTINUE
 5011   CONTINUE
      ENDIF
C
C END IF 1-JET CASE REACHED
C
      IF(NJJ.LE.1) GOTO 9000
C
C NOW CALCULATE RELEVANT NEW MASS-COMBINATIONS
C
      DO 5013 II=1,NJJ
        IF(II.NE.IM) THEN
         I = MIN(II,IM)
         J = MAX(II,IM)
         IF(IMODE.EQ.1) THEN
           Y(I,J) = JADE(I,J)
         ELSEIF(IMODE.EQ.5) THEN
           Y(I,J) = D(I,J)
         ELSEIF(IMODE.EQ.6) THEN
           Y(I,J) = G(I,J)
         ELSE
           Y(I,J) = E(I,J)
         ENDIF
        ENDIF
        IF(NOLD.NE.0) THEN
          I = MIN(II,JM)
          J = MAX(II,JM)
          Y(I,J) = Y(II,NOLD)
        ENDIF
 5013 CONTINUE
C
C  BACK TO START OF LOOP
C
      GOTO 1000
C
 9000 CONTINUE
C
      IMODEO = IMODE
      NTO = NT
      IERR = 0
CCCCC
C     WRITE(6,825) (J,(HISTOR(I,J),I=1,2),J=1,NT)
C825  FORMAT(/,' HISTORY:',/,250(I3,4X,2I4,/))
CCCCC
      RETURN
      END
C
CDECK  ID>, YNJET.
      SUBROUTINE YNJET(YCUT,NJET,IERR)
C
C  ROUTINE TO RETURN THE NUMBER OF JETS FOR A GIVEN YCUT
C
C  LAST MOD  :  21-Jun-98
C
C  Modification Log.
C  08-Oct-97 D. Chrisman, Increase NYCLMX from 250 to 500.
C  21-Jun-98 D. Chrisman, Want to be able to handle more than 10 jets.
C                         Introduce parameter NJETMX. Use this
C                         in declaration of PJET and YREC in order to remove
C                         hard coded numbers. Also replace the hard
C                         coded number in the "D0 5001" loop with the
C                         parameter NJETMX.
C
      IMPLICIT NONE
C     IMPLICIT NONE
      INTEGER NJET,IERR,NYCLMX,NJETMX,IMODEO,NJETO,NTO,I
      PARAMETER (NYCLMX = 500, NJETMX = 20)
      REAL YCUT,YREC(NJETMX),PINT(10,NYCLMX),PJET(10,NJETMX,NJETMX)
      INTEGER HISTOR(2,NYCLMX)
      COMMON /YCL/YREC,PJET,HISTOR
      COMMON /YINT/ IMODEO,NTO,NJETO,PINT
      IERR = -1
C
CHECK IF CALL WAS MADE TO YKERN
C
      IF(IMODEO.LE.0 .OR. IMODEO.GT.7) THEN
        WRITE(6,111)
 111    FORMAT(' #### YNJET: YKERN MUST BE CALLED FIRST ! ####')
        NJET = -1
        RETURN
      ENDIF
C
CHECK IF INPUT MAKES SENSE
C
      IF(YCUT.LE.0. .OR. YCUT.GT.1.) THEN
        WRITE(6,1) YCUT
 1      FORMAT(' #### YNJET: INPUT YCUT=',E12.4,' INVALID ####')
        NJET = -1
        RETURN
      ENDIF
C
      NJET = 1
      DO 5001 I=1,NJETMX
        IF(YCUT.LT.YREC(I)) NJET = I+1
 5001 CONTINUE
      IERR = 0
      RETURN
      END
C
CDECK  ID>, YYJET.
      SUBROUTINE YYJET(NJET,YL,YH,IERR)
C
C  ROUTINE TO RETURN THE VALUES OF YCUT BETWEEN WHICH EVENT IS
C  CLASSIFIED AS N-JET (YL < YH)
C
C  LAST MOD  :  21-Jun-98
C
C  Modification Log.
C  08-Oct-97 D. Chrisman, Increase NYCLMX from 250 to 500.
C  21-Jun-98 D. Chrisman, Want to be able to handle more than 10 jets.
C                         Introduce parameter NJETMX. Use this
C                         in declaration of PJET and YREC in order to remove
C                         hard coded numbers.
C
      IMPLICIT NONE
C     IMPLICIT NONE
      INTEGER NYCLMX,NJETMX,NJET,IERR,IMODEO,NJETO,NTO
      PARAMETER (NYCLMX = 500, NJETMX = 20)
      INTEGER HISTOR(2,NYCLMX)
      REAL YREC(NJETMX),YL,YH,PINT(10,NYCLMX),PJET(10,NJETMX,NJETMX)
      COMMON /YCL/YREC,PJET,HISTOR
      COMMON /YINT/ IMODEO,NTO,NJETO,PINT
      IERR = -1
C
CHECK IF CALL WAS MADE TO YKERN
C
      IF(IMODEO.LE.0 .OR. IMODEO.GT.7) THEN
        WRITE(6,111)
 111    FORMAT(' #### YYJET: YKERN MUST BE CALLED FIRST ! ####')
        YL = -1.
        YH = -1.
        RETURN
      ENDIF
C
CHECK IF INPUT MAKES SENSE
C
      IF(NJET.LE.0 .OR. NJET.GT.NJETMX) THEN
        WRITE(6,1) NJET
 1      FORMAT(' #### YYJET: REQUEST FOR NJET=',I12,
     +  ' NOT SUPPORTED ####')
        YL = -1.
        YH = -1.
        RETURN
      ENDIF
      IF(NJET.GT.NTO) THEN
        WRITE(6,2) NJET,NTO
 2      FORMAT(' #### YYJET:',I3,' JETS OUT OF',I3,' PARTICLES NOT',
     +  ' POSSIBLE. ####')
        YL = -1.
        YH = -1.
        RETURN
      ENDIF
C
      IF(NJET.EQ.1) THEN
        YH = 1.
      ELSE
        YH = YREC(NJET-1)
      ENDIF
      YL = YREC(NJET)
C
      IERR = 0
      RETURN
      END
C
CDECK  ID>, YAXES.
      SUBROUTINE YAXES(NJET,PNJ,IERR)
C
C  ROUTINE TO RETURN THE JET AXES WHEN EVENT IS CLASSIFIED AS N-JET
C
C  LAST MOD  :  21-Jun-98
C
C  Modification Log.
C  08-Oct-97 D. Chrisman, Increase NYCLMX from 250 to 500.
C  21-Jun-98 D. Chrisman, Want to be able to handle more than 10 jets.
C                         Introduce parameter NJETMX. Use this
C                         in declaration of PJET, YREC and PNJ in order to
C                         remove hard coded numbers.
C
      IMPLICIT NONE
C     IMPLICIT NONE
      INTEGER NYCLMX,NJETMX,NJET,IERR,IMODEO,NJETO,NTO,ICHECK,I,J,K,N
      PARAMETER (NYCLMX = 500, NJETMX = 20)
      INTEGER HISTOR(2,NYCLMX)
      REAL YREC(NJETMX),PINT(10,NYCLMX),PJET(10,NJETMX,NJETMX)
      REAL PNJ(10,NJETMX)
      COMMON /YCL/YREC,PJET,HISTOR
      COMMON /YINT/ IMODEO,NTO,NJETO,PINT
      IERR = -1
C
CHECK IF CALL WAS MADE TO YKERN
C
      ICHECK = 0
      IF(IMODEO.LE.0 .OR. IMODEO.GT.7) THEN
        WRITE(6,111)
 111    FORMAT(' #### YAXES: YKERN MUST BE CALLED FIRST ! ####')
        ICHECK = -1
      ENDIF
C
CHECK IF INPUT MAKES SENSE
C
      IF(NJET.LE.0 .OR. NJET.GT.NJETMX) THEN
        WRITE(6,1) NJET
 1      FORMAT(' #### YAXES: REQUEST FOR NJET=',I4,
     +  ' NOT SUPPORTED ####')
        ICHECK = -1
      ENDIF
      IF(NJET.GT.NTO) THEN
        WRITE(6,2) NJET,NTO
 2      FORMAT(' #### YAXES:',I4,' JETS FOR',I4,' PARTICLES NOT',
     +  ' POSSIBLE. ####')
        ICHECK = -1
      ENDIF
      IF(ICHECK.NE.0) THEN
        DO 5001 I=1,10
          DO 5002 J=1,NJETMX
            PNJ(I,J) = -1.
 5002     CONTINUE
 5001   CONTINUE
        RETURN
      ENDIF
C
      DO 5003 N=1,NJET
        DO 5004 K=1,7
          PNJ(K,N) = PJET(K,N,NJET)
 5004   CONTINUE
 5003 CONTINUE
C
      IERR = 0
      RETURN
      END
C
CDECK  ID>, YASSO.
      SUBROUTINE YASSO(NJET,PNJ,BL,IERR)
C
C  ROUTINE TO RETURN THE ASSIGNMENT OF PARTICLES TO JET AXES, FOR
C  CLASSIFICATION AS N-JET (FOR PARTICLE K IN MOMENTUM ARRAY,
C  J=BL(K) POINTS TO JET NUMBER J IN ARRAY PNJ).
C  JETS ARE ORDERED ACCORDING TO THEIR ENERGIES: E1 >= E2 >= ...
C
C  LAST MOD  : 28-Jul-99
C
C  Modification Log.
C  28-Jul-99 D. Chrisman, ITAG and IREORD are now dimensioned with NJETMX 
C                         elements.
C  08-Oct-97 D. Chrisman, Increase NYCLMX from 250 to 500.
C  21-Jun-98 D. Chrisman, Want to be able to handle more than 10 jets.
C                         Introduce parameter NJETMX. Use this
C                         in declaration of PJET, YREC and PNJ in order to
C                         remove hard coded numbers.
C
      IMPLICIT NONE
C     IMPLICIT NONE
      INTEGER NYCLMX,NJETMX,NJET,IERR,IMODEO,NJETO,NTO,ICHECK,I,J,K,N      
      INTEGER I1,I2
      PARAMETER (NYCLMX = 500, NJETMX = 20)
      INTEGER HISTOR(2,NYCLMX),IMAX,BL(NYCLMX),ITAG(NJETMX),
     +         IREORD(NJETMX)
      REAL YREC(NJETMX),PINT(10,NYCLMX),PJET(10,NJETMX,NJETMX)    
      REAL PNJ(10,NJETMX),EMAX
      COMMON /YCL/YREC,PJET,HISTOR
      COMMON /YINT/ IMODEO,NTO,NJETO,PINT
      IERR = -1
C
CHECK IF CALL WAS MADE TO YKERN
C
      ICHECK = 0
      IF(IMODEO.LE.0 .OR. IMODEO.GT.7) THEN
        WRITE(6,111)
 111    FORMAT(' #### YASSO: YKERN MUST BE CALLED FIRST ! ####')
        ICHECK = -1
      ENDIF
C
CHECK IF INPUT MAKES SENSE
C
      IF(NJET.LE.0 .OR. NJET.GT.NJETMX) THEN
        WRITE(6,1) NJET
 1      FORMAT(' #### YASSO: REQUEST FOR NJET=',I4,
     +  ' NOT SUPPORTED ####')
        ICHECK = -1
      ENDIF
      IF(NJET.GT.NTO) THEN
        WRITE(6,2) NJET,NTO
 2      FORMAT(' #### YASSO:',I4,' JETS OUT OF',I4,' PARTICLES NOT',
     +  ' POSSIBLE. ####')
        ICHECK = -1
      ENDIF
      IF(ICHECK.NE.0) THEN
        DO 5001 I=1,10
          DO 5002 J=1,NJETMX
            PNJ(I,J) = -1.
 5002     CONTINUE
 5001   CONTINUE
        DO 5003 I=1,NTO
          BL(I) = -1
 5003   CONTINUE
        RETURN
      ENDIF
C
      DO 5004 I=1,NTO
        BL(I) = I
 5004 CONTINUE
C
      IF(NJET.NE.NTO) THEN
      DO 5005 I=NTO,NJET+1,-1
        I1 = HISTOR(1,I)
        I2 = HISTOR(2,I)
        DO 5006 N=1,NTO
          IF(BL(N).EQ.I1) BL(N) = I2
          IF(I1.NE.I) THEN
            IF(BL(N).EQ.I) BL(N) = I1
          ENDIF
 5006   CONTINUE
 5005 CONTINUE
      ENDIF
C
C ORDER JETS ACCORDING TO THEIR ENERGY (FIRST IS LARGEST)
C AND CHANGE POINTERS ACCORDINGLY
C
      DO 5007 I=1,NJET
        ITAG(I) = 1
 5007 CONTINUE
      DO 5008 I=1,NJET
C       IF(ITAG(I).NE.0) THEN
          EMAX = 0.
          IMAX = 0
          DO 5009 J=1,NJET
            IF(ITAG(J).NE.0 .AND. EMAX.LT.PJET(4,J,NJET)) THEN
               EMAX = PJET(4,J,NJET)
               IMAX = J
            ENDIF
 5009     CONTINUE
          IF(IMAX.LE.0) THEN
            WRITE(6,9)
 9          FORMAT(' #### YASSO: JET AXIS WITH ZERO OR NEGATIVE ',
     +      'ENERGY COMPONENT DETECTED; NO ORDERING DONE. ####')
            DO 5010 N=1,NJET
              DO 5011 K=1,7
                PNJ(K,N) = PJET(K,N,NJET)
 5011         CONTINUE
 5010       CONTINUE
            RETURN
          ENDIF
          ITAG(IMAX) = 0
          IREORD(IMAX) = I
C       ENDIF
 5008 CONTINUE
C
      DO 5012 N=1,NJET
        DO 5013 K=1,7
          PNJ(K,IREORD(N)) = PJET(K,N,NJET)
 5013   CONTINUE
 5012 CONTINUE
C
      DO 5014 I=1,NTO
        BL(I) = IREORD(BL(I))
 5014 CONTINUE
C
      IERR = 0
      RETURN
      END
C
CDECK  ID>, YREAS.
      SUBROUTINE YREAS(NJET,PNJ,YMIN,BL,IERR)
C
C  REASSIGNES PARTICLES TO CLOSEST JET (IN ANGLE);
C  STARTS FROM INITIAL EVENT CONFIGURATION ACCORDING TO LAST CALL
C  OF YKERN; RE-IERATES NEW JET AXES AND PARTICLE ASSIGNMENTS UNTIL
C  STABLE CONFIGURATION IS REACHED. IF AN AXES WITH ZERO PARTICLES
C  AND MOMENTUM EMERGES, ROUTINE RETAINS THE INITIAL N-JET CONFIGURA-
C  TION AND RETURNS IERR=-2. IERR=-1 MEANS INVALID INPUT CONDITIONS;
C  RESULTS MUST BE SKIPPED.
C  INPUT:   NJET IS NUMBER OF JETS REQUIRED
C  OUTPUTS: PNJ(K,NJ) CONTAINS NEW JET AXES; POS. K=7 HOLDS NUMBER OF
C                     PARTICLES ASSIGNED TO AXES NJ.
C           YMIN IS VALUE OF JET RESOLUTION YCUT WHERE EVENT FLIPS
C                TO (NJET-1) JET CONFIGURATION [COMPARE WITH
C                YREC(NJET-1) OF CONFIGURATION BEFORE REASSIGNMENT].
C           BL(N) CONTAINS POINTER TO JET AXES TO WHICH PARTICLE N
C                 IS ASSIGNED.
C
C  LAST MOD  :  21-Jun-98
C
C  Modification Log.
C  12-May-97 D. Chrisman, remove declaration of unused variable EMAX.
C  08-Oct-97 D. Chrisman, Increase NYCLMX from 250 to 500.
C  21-Jun-98 D. Chrisman, Want to be able to handle more than 10 jets.
C                         Introduce parameter NJETMX. Use this
C                         in declaration of PJET, YREC, PNJ and PNN in order to
C                         remove hard coded numbers.
C
      IMPLICIT NONE
C     IMPLICIT NONE
      INTEGER NYCLMX,NJETMX,NJET,IERR,IMODEO,NJETO,NTO,ICHECK,I,J    
      INTEGER NITMAX,IER
      PARAMETER (NYCLMX = 500, NJETMX = 20)
      PARAMETER (NITMAX=10)
      INTEGER HISTOR(2,NYCLMX),NIT,ICFLAG,JMAX,K,NZERO,BL(NYCLMX)
      REAL YREC(NJETMX),PINT(10,NYCLMX),PJET(10,NJETMX,NJETMX)
      REAL PNJ(10,NJETMX)
      REAL PNN(10,NJETMX),COSMAX,COSIJ,EVIS,YIJ,YMIN
      COMMON /YCL/YREC,PJET,HISTOR
      COMMON /YINT/ IMODEO,NTO,NJETO,PINT
      IERR = -1
C
CHECK IF CALL WAS MADE TO YKERN
C
      ICHECK = 0
      IF(IMODEO.LE.0 .OR. IMODEO.GT.7) THEN
        WRITE(6,111)
 111    FORMAT(' #### YREAS: YKERN MUST BE CALLED FIRST ! ####')
        ICHECK = -1
      ENDIF
C
CHECK IF INPUT MAKES SENSE
C
      IF(NJET.LE.0 .OR. NJET.GT.NJETMX) THEN
        WRITE(6,1) NJET
 1      FORMAT(' #### YREAS: REQUEST FOR NJET=',I4,
     +  ' NOT SUPPORTED ####')
        ICHECK = -1
      ENDIF
      IF(NJET.GT.NTO) THEN
        WRITE(6,2) NJET,NTO
 2      FORMAT(' #### YREAS:',I4,' JETS OUT OF',I4,' PARTICLES NOT',
     +  ' POSSIBLE. ###')
        ICHECK = -1
      ENDIF
      IF(ICHECK.NE.0) THEN
        DO 5001 I=1,10
          DO 5002 J=1,NJETMX
            PNJ(I,J) = -1.
 5002     CONTINUE
 5001   CONTINUE
        DO 5003 I=1,250
          BL(I) = -1
 5003   CONTINUE
        RETURN
      ENDIF
C
C GET INITIAL JET AXES FROM OUTPUT OF JET FINDER
C
      CALL YASSO(NJET,PNJ,BL,IER)
C
      NIT = 0
C
  100 CONTINUE
      NIT = NIT + 1
      DO 5004 J=1,NJET
        DO 5005 I=1,7
          PNN(I,J) = 0.
 5005   CONTINUE
 5004 CONTINUE
      ICFLAG = 0
      DO 5006 I=1,NTO
        COSMAX = -2.
        DO 5007 J=1,NJET
          COSIJ = (PINT(1,I)*PNJ(1,J)+PINT(2,I)*PNJ(2,J)+
     +    PINT(3,I)*PNJ(3,J)) / (PINT(6,I)*PNJ(6,J))
          IF(COSIJ.GT.COSMAX) THEN
            COSMAX = COSIJ
            JMAX = J
          ENDIF
 5007   CONTINUE
C ADD PARTICLE I TO NEW JET JMAX
        DO 5008 K=1,4
          PNN(K,JMAX) = PNN(K,JMAX) + PINT(K,I)
 5008   CONTINUE
        PNN(7,JMAX) = PNN(7,JMAX) + 1.
CHECK WHETHER ASSIGNMENT HAS CHANGED
        IF(BL(I). NE. JMAX) THEN
          ICFLAG = ICFLAG + 1
          BL(I) = JMAX
        ENDIF
 5006 CONTINUE
C
CHECK IF JET WITH ZERO PARTICLES OCCURED
C
      NZERO = 0
      DO 5009 J=1,NJET
        IF(PNN(7,J).LT.1.) NZERO = NZERO + 1
 5009 CONTINUE
C
      IF(NZERO.NE.0) THEN
        WRITE(6,3)
 3      FORMAT(' #### YREAS: JET WITH ZERO PARTICLES OCCURED;',
     +  ' RETAIN ORIGINAL AXES. ####')
        CALL YASSO(NJET,PNJ,BL,IER)
        IERR = -2
        ICFLAG = 0
        YMIN = YREC(NJET-1)
      ELSE
COPY NEW JET MOMENTA TO OUTPUT ARRAY
        EVIS = 0.
        DO 5010 J=1,NJET
          PNN(6,J)=SQRT(PNN(1,J)**2 + PNN(2,J)**2 + PNN(3,J)**2)
          PNJ(1,J) = PNN(1,J)
          PNJ(2,J) = PNN(2,J)
          PNJ(3,J) = PNN(3,J)
          PNJ(6,J) = PNN(6,J)
          PNJ(7,J) = PNN(7,J)
          IF(IMODEO.EQ.2 .OR. IMODEO.EQ.3) THEN
            PNJ(4,J) = PNN(6,J)
          ELSE
            PNJ(4,J) = PNN(4,J)
          ENDIF
          EVIS = EVIS + PNJ(4,J)
 5010   CONTINUE
      ENDIF
C  RE-ITERATE IF A CHANGE OCCURED
      IF(ICFLAG.NE.0 .AND. NIT.LT.NITMAX) GOTO 100
C  END OF ITERATION
      IF(NIT.GE.NITMAX .AND. ICFLAG.NE.0) WRITE(6,200) NIT,ICFLAG
 200  FORMAT(' #### YREAS: JET ASSIGNMENT NOT STABLE AFTER',I3,
     +' ITERATIONS (STILL',I3,' CHANGES) ####')
C
CALCULATE FINAL VALUE OF JET RESOLUTION FOR TRANSITION TO NJET-1 JETS
C
      IF(IERR.NE.-2) THEN
      YMIN = EVIS**2
      DO 5011 I=1,NJET-1
        DO 5012 J=I+1,NJET
          IF(IMODEO.EQ.1) THEN
            YIJ = 2.*PNJ(4,I)*PNJ(4,J)*MAX(0.,(1.-
     +      (PNJ(1,I)*PNJ(1,J)+PNJ(2,I)*PNJ(2,J)+PNJ(3,I)*PNJ(3,J))/
     +      (PNJ(6,I)*PNJ(6,J))))
          ELSEIF(IMODEO.EQ.5) THEN
            YIJ = 2.*MIN(PNJ(4,I)*PNJ(4,I),PNJ(4,J)*PNJ(4,J))*MAX(0.,
     +      (1.-(PNJ(1,I)*PNJ(1,J)+PNJ(2,I)*PNJ(2,J)+PNJ(3,I)*PNJ(3,J))/
     +      (PNJ(6,I)*PNJ(6,J))))
          ELSEIF(IMODEO.EQ.6) THEN
            YIJ = 8.*PNJ(4,I)*PNJ(4,J)*MAX(0.,(1.-
     +      (PNJ(1,I)*PNJ(1,J)+PNJ(2,I)*PNJ(2,J)+PNJ(3,I)*PNJ(3,J))/
     +      (PNJ(6,I)*PNJ(6,J))))/(9.*(PNJ(4,I)+PNJ(4,J))**2)
          ELSE
            YIJ = MAX(0.,(PNJ(4,I)+PNJ(4,J))**2-(PNJ(1,I)+PNJ(1,J))**2-
     +      (PNJ(2,I)+PNJ(2,J))**2-(PNJ(3,I)+PNJ(3,J))**2)
          ENDIF
          IF(YIJ.LT.YMIN) YMIN = YIJ
 5012   CONTINUE
 5011 CONTINUE
      IF(IMODEO.NE.6) YMIN = YMIN / EVIS**2
      IERR = 0
      ENDIF
C
      RETURN
      END
C
CDECK  ID>, YTREE.
      SUBROUTINE YTREE(LPRINT,PTR,IERR)
C
C  ROUTINE TO GENERATE, RETURN AND (IF REQUESTED) PRINT OUT THE
C  ENTIRE EVENT HISTORY OF PARTICLE/JET RECOMBINATIONS, FOR THE
C  EVENT AND PARTICLES FROM LAST CALL TO YKERN.
C  INPUT:  LPRINT = .TRUE.: EVENT HISTORY (I.E. PTR) SHALL BE PRINTED
C  OUTPUT: PTR(10,*) CONTAINS PARTICLE/JET 4-MOMENTA, MASSES, MOMENTA
C                    AND HISTORY INFORMATION.
C          PTR(1-6,K):  P_X, P_Y, P_Z, E, MASS, |P| OF VECTOR K
C          PTR(7,*)  :  VALUE OF Y_IJ WHEN SPLIT INTO DAUGHTERS (IF ANY)
C          PTR(8,*)  :  POINTER TO PARENT JET/CLUSTER (0 FOR 1ST VECTOR)
C          PTR(9-10,*): POINTERS TO DAUGHTERS (0 FOR FINAL STATE PART.).
C          VECTORS K= 1 TO NT-1 (NT IS THE NUMBER OF PARTICLES FOR WHICH
C          YKERN WAS CALLED) CORRESPOND TO THE CLUSTERS OR JETS FROM THE
C          ENTIRE RECOMBINATION CHAIN, DOWN TO 1-JET; THE 1ST VECTOR
C          THUS HOLDS THE SUM OF 4-VECTORS OF ALL FINAL STATE PARTICLES.
C          VECTORS NT TO 2*NT-1 ARE AN EXACT COPY OF THE INPUT PARTICLES
C          TO PREVIOUS CALL OF YKERN.
C          NOTE: E AND Y_IJ CONFORM WITH THE JET SCHEME CHOSEN WHEN
C          YKERN WAS CALLED; E.G. E=|P| IN P- AND P0-SCHEME.
C
C  LAST MOD  :  21-Jun-98
C
C  Modification Log.
C  12-May-97 D. Chrisman, remove declaration of unused variable NJET.
C  08-Oct-97 D. Chrisman, Increase NYCLMX from 250 to 500.
C  21-Jun-98 D. Chrisman, Want to be able to handle more than 10 jets.
C                         Introduce parameter NJETMX. Use this
C                         in declaration of PJET and YREC in order to
C                         remove hard coded numbers.
C
      IMPLICIT NONE
C     IMPLICIT NONE
      INTEGER NYCLMX,NJETMX,IERR,IMODEO,NJETO,NTO,ICHECK,I,J,K,I1,I2,II
      PARAMETER (NYCLMX = 500, NJETMX = 20)
      INTEGER HISTOR(2,NYCLMX),BL(NYCLMX)
      REAL YREC(NJETMX),PINT(10,NYCLMX),PJET(10,NJETMX,NJETMX),EVIS
      COMMON /YCL/YREC,PJET,HISTOR
      COMMON /YINT/ IMODEO,NTO,NJETO,PINT
      REAL PTR(10,NYCLMX)
      LOGICAL LPRINT
      IERR = -1
C
CHECK IF CALL WAS MADE TO YKERN
C
      ICHECK = 0
      IF(IMODEO.LE.0 .OR. IMODEO.GT.7) THEN
        WRITE(6,111)
 111    FORMAT(' #### YTREE:  YKERN MUST BE CALLED FIRST ! ####')
        ICHECK = -1
      ENDIF
C
CHECK IF INPUT MAKES SENSE
C
      IF(NYCLMX.LT.2*NTO-1) THEN
        WRITE(6,1) NYCLMX,2*NTO
 1      FORMAT(' #### YTREE: NOT ENOUGH SPACE FOR EVENT TREE; ',
     +  'INCREASE ARRAY DIMENSIONS FROM',I4,' TO',I4,' ####')
        ICHECK = -1
      ENDIF
      IF(ICHECK.NE.0) THEN
        DO 5001 I=1,10
          DO 5002 J=1,NYCLMX
            PTR(I,J) = -1.
 5002     CONTINUE
 5001   CONTINUE
        RETURN
      ENDIF
C
      DO 5003 I=1,NTO
        BL(I) = NTO+I
 5003 CONTINUE
      EVIS = 0.
C
C  COPY INPUT MOMENTA AND INITIALIZE OUTPUT ARRAY
C
      DO 5004 I=1,NTO
        K = NTO + I -1
        PTR(1,K) = PINT(1,I)
        PTR(2,K) = PINT(2,I)
        PTR(3,K) = PINT(3,I)
        PTR(6,K) = SQRT(PINT(1,I)**2+PINT(2,I)**2+PINT(3,I)**2)
        IF(IMODEO.EQ.2 .OR. IMODEO.EQ.3) THEN
          PTR(4,K) = PTR(6,K)
          PTR(5,K) = 0.
        ELSE
          PTR(4,K) = PINT(4,I)
          PTR(5,K) = SQRT(MAX(0.,PTR(4,K)**2-PTR(6,K)**2))
        ENDIF
        PTR(7,K) = 0.
        PTR(8,K) = 0.
        PTR(9,K) = 0.
        PTR(10,K) = 0.
        EVIS = EVIS + PTR(4,K)
 5004 CONTINUE
C
C RECONSTRUCT AND STORE EVENT TREE
C
      DO 5005 I=NTO,2,-1
        I1 =  BL(HISTOR(1,I))-1
        I2 =  BL(HISTOR(2,I))-1
        II = I-1
        PTR(1,II) = PTR(1,I1) + PTR(1,I2)
        PTR(2,II) = PTR(2,I1) + PTR(2,I2)
        PTR(3,II) = PTR(3,I1) + PTR(3,I2)
        PTR(6,II) = SQRT(PTR(1,II)**2+PTR(2,II)**2+PTR(3,II)**2)
        IF(IMODEO.EQ.2 .OR. IMODEO.EQ.3) THEN
          PTR(4,II) = PTR(6,II)
          PTR(5,II) = 0.
        ELSE
          PTR(4,II) = PTR(4,I1) + PTR(4,I2)
          PTR(5,II) = SQRT(MAX(0.,PTR(4,II)**2-PTR(6,II)**2))
        ENDIF
C FLAG THIS VECTOR (I) AS PARENT OF DAUGHTER VECTORS (BIGGEST FIRST)
        IF(PTR(4,I1).GT.PTR(4,I2)) THEN
          PTR(9,II) = FLOAT(I1)
          PTR(10,II)= FLOAT(I2)
        ELSE
          PTR(10,II)= FLOAT(I1)
          PTR(9,II) = FLOAT(I2)
        ENDIF
C FLAG DAUGHTERS OF THIS VECTOR (I)
        PTR(8,I1)= FLOAT(II)
        PTR(8,I2)= FLOAT(II)
C UPDATE RELATIVE POSITION OF VECTORS
        BL(HISTOR(2,I)) = I
        BL(HISTOR(1,I)) = BL(I)
C CALC AND STORE RESOLUTION PARAMETER Y_IJ FOR PARENT -> DAUGHTERS I,J
        IF(IMODEO.EQ.1) THEN
         PTR(7,II) = 2.*PTR(4,I1)*PTR(4,I2)*MAX(0.,(1.-
     +   (PTR(1,I1)*PTR(1,I2)+PTR(2,I1)*PTR(2,I2)+PTR(3,I1)*PTR(3,I2))/
     +   (PTR(6,I1)*PTR(6,I2)))) / EVIS**2
        ELSEIF(IMODEO.EQ.5) THEN
         PTR(7,II) = 2.*MIN(PTR(4,I1)*PTR(4,I1),PTR(4,I2)*PTR(4,I2))*
     +   MAX(0.,(1.-(PTR(1,I1)*PTR(1,I2)+PTR(2,I1)*PTR(2,I2)+PTR(3,I1)*
     +   PTR(3,I2))/(PTR(6,I1)*PTR(6,I2)))) / EVIS**2
        ELSEIF(IMODEO.EQ.6) THEN
         PTR(7,II) = 8.*PTR(4,I1)*PTR(4,I2)*MAX(0.,(1.-
     +   (PTR(1,I1)*PTR(1,I2)+PTR(2,I1)*PTR(2,I2)+PTR(3,I1)*PTR(3,I2))/
     +   (PTR(6,I1)*PTR(6,I2))))/(9.*(PTR(4,I1)+PTR(4,I2))**2)
        ELSE
         PTR(7,II) = MAX(0.,(PTR(4,I1)+PTR(4,I2))**2-(PTR(1,I1)+
     +   PTR(1,I2))**2-(PTR(2,I1)+PTR(2,I2))**2-
     +   (PTR(3,I1)+PTR(3,I2))**2) / EVIS**2
        ENDIF
C READJUST EVIS IF IN MODE 3 (P0)
        IF(IMODEO.EQ.3) THEN
          EVIS = EVIS - PTR(4,I1) - PTR(4,I2) + PTR(4,II)
        ENDIF
 5005 CONTINUE
C
      IF(LPRINT) THEN
C       WRITE(6,201) (I,(HISTOR(J,I),J=1,2),I=1,NTO)
C201    FORMAT(/,' HISTOR:',/,250(I4,2X,2I5/))
        WRITE(6,199)
 199    FORMAT(/,' YTREE: EVENT TREE INFORMATION',/,
     +  ' POS      P_X      P_Y      P_Z       E        M       |P| ',
     +  ' Y_D1D2 PAR  D1  D2')
        DO 5010 I=1,NTO-1
         WRITE(6,200) I,(PTR(J,I),J=1,7),(INT(PTR(J,I)),J=8,10)
 200     FORMAT(I4,6(1X,F8.3),1X,F7.4,3(1X,I3))
 5010   CONTINUE
        WRITE(6,202)
 202    FORMAT('        STABLE PARTICLES:')
        DO 5011 I=NTO,2*NTO-1
          WRITE(6,203) I,(PTR(J,I),J=1,7),INT(PTR(8,I))
 203      FORMAT(I4,6(1X,F8.3),1X,F7.4,1X,I3)
 5011   CONTINUE
      ENDIF
C
      IERR = 0
      RETURN
      END
C====================================================================
C
C INTERFACES TO OLD PX-LIB ROUTINES:
C
CDECK  ID>, PXJTR4.
      SUBROUTINE PXJTR4 (CMODE,NTRAK,ITKDM,PTRAK,YCUT,MXJET,
     +                   NJET,PJET,IPASS,IJMUL,IERR)
*.*********************************************************
*. ------
*. PXJTR4
*. ------
*. Driver for the YCLUS jet-finding routine of S. Bethke.
*. This driver orders the jets by energy and calculates
*. the invariant jet masses.
*. Usage     :
*.
*.      INTEGER  ITKDM,MXTRK
*.      PARAMETER  (ITKDM=4.or.more,MXTRK=1.or.more)
*.      INTEGER  MXJET,MXTKJT
*.      PARAMETER  (MXJET=10,MXTKJT=250)
*.      INTEGER  IPASS (MXTKJT),IJMUL (MXJET)
*.      INTEGER  NTRAK,NJET,IERR
*.      REAL  PTRAK (ITKDM,MXTRK),PJET (5,MXJET)
*.      REAL  YCUT
*.      CHARACTER*2 CMODE
*.
*.      CMODE = 'E0', 'E', 'P0', 'P', 'D' OR 'G'
*.      NTRAK = 1.to.MXTRAK
*.      YCUT = ...
*.      CALL PXJTR4 (CMODE,NTRAK,ITKDM,PTRAK,YCUT,MXJET,
*.     +             NJET,PJET,IPASS,IJMUL,IERR)
*.
*. INPUT     :  CMODE  RECOMBINATION SCHEME (='E0','E','P0','P','D','G')
*.                       ('E0' is equivalent to the original JADE scheme)
*. INPUT     :  NTRAK     Number of particles
*. INPUT     :  ITKDM     First dimension of PTRAK array
*. INPUT     :  PTRAK     Array of particle 4-momenta (Px,Py,Pz,E)
*. INPUT     :  YCUT      (minimum scaled inv. pair mass)**2
*. INPUT     :  MXJET     Maximum possible number of jets
*. OUTPUT    :  NJET      Number of jets found
*. OUTPUT    :  PJET      5-vectors of jets
*. OUTPUT    :  IPASS(k)  Particle k belongs to jet number IPASS(k)
*. OUTPUT    :  IJMUL(i)  Jet i contains IJMUL(i) particles
*. OUTPUT    :  IERR      = 0 if all is OK ;   = -1 otherwise
*.
*. CALLS     : PXYCR4,PXSORV,PXCOPV,PXMAS4,PXPOSI,PXPRNT,PXPRIV
*. CALLED    : User
*.
*. AUTHOR    :  J.W.Gary
*. CREATED   :  20-Feb-89
*. LAST MOD  :  06-NOV-92
*.
*. Modification Log.
*. 14-Feb-91  S.BETHKE  - ADD DIFF. RECOMBINATION SCHEMES (IMODE !)
*.                      - CALL WITH YCUT INSTEAD OF XMIN
*. 29-Jun-91  J.W.Gary  Recomb. scheme indexed with character value
*. 06-NOV-92  S.BETHKE  NEW SCHEMES DURHAM 'D' AND GENEVA 'G'; INTER-
*.                      FACED TO JETFINDER 'YKERN' AND RELATED ROUTINES.
*.*********************************************************
      IMPLICIT NONE
C     IMPLICIT NONE
      INTEGER  MXYTRK
      PARAMETER  (MXYTRK=250)
      INTEGER  IPASS (*), IJMUL (*), BL(MXYTRK)
      INTEGER  ITKDM,MINTR,IMODE,NTRAK,I,J,NJET,IERR,MXJET,IER
      REAL  PNJ(10,10),PTRAK (ITKDM,*),PJET (5,*),YCUT
      CHARACTER*(*) CMODE
C
C  +SEQ,JSCHEME.
      INTEGER  NSCHEM
      PARAMETER  (NSCHEM=6)
      CHARACTER*2  ZSCHEM (NSCHEM)
      SAVE  ZSCHEM
      DATA  ZSCHEM / 'E0','P ','P0','E ','D ','G ' /
C
      IERR = 0
      CALL PXPOSC (CMODE,NSCHEM,ZSCHEM,IMODE)
      IF (IMODE.EQ.-1) THEN
         WRITE (6,FMT='('' PXJTR4: ERROR, CMODE ='',A6,
     +      '' undefined'')') CMODE
         IERR = -1
         RETURN
      END IF
C
*  more than MXYTRK particles not allowed
*  ---- ---- ------ --------- --- -------
      IF (NTRAK.GT.MXYTRK) THEN
         WRITE (6,FMT='('' PXJTR4: WARNING, NTRAK ='',I6,
     +   ''  EXCEEDS LIMIT OF'',I4,''; RESET TO LIMIT!'')') NTRAK,MXYTRK
         NTRAK = MXYTRK
         IERR = 1
      END IF
*
*  CALL YKERN TO EXECUTE JET RECONSTRUCTION
*  ---- ----- -- ------- --- --------------
      CALL YKERN(IMODE,NTRAK,ITKDM,PTRAK,IER)
*  DETERMINE AND COPY RESULTS TO OUTPUT VARIABLES
*  --------- --- ---- ------- -- ------ ---------
      IF(IER.EQ.0) THEN
        CALL YNJET(YCUT,NJET,IER)
        IF (NJET.GT.MXJET) THEN
           WRITE (6,FMT='('' PXYCR4, ERROR, NJET ('',I6,
     +       '') EXCEEDS MXJET ('',I6,'')'')') NJET,MXJET
           IER = -1
        END IF
        IF(IER.EQ.0) CALL YASSO(NJET,PNJ,BL,IER)
        IF(IER.EQ.0) THEN
          DO 5001 I=1,NTRAK
            IPASS(I) = BL(I)
 5001     CONTINUE
          MINTR = 1000
          DO 5002 I=1,NJET
            IJMUL(I) = INT(PNJ(7,I))
            IF(MINTR.GT.IJMUL(I)) MINTR = IJMUL(I)
            DO 5003 J=1,4
              PJET(J,I) = PNJ(J,I)
 5003       CONTINUE
            PJET(5,I) = PNJ(4,I)**2 - PNJ(6,I)**2
            IF (PJET(5,I).LT.0) THEN
               PJET(5,I) = 0.
            ELSE
               PJET(5,I) = SQRT(PJET(5,I))
            END IF
 5002     CONTINUE
        ELSE
          IERR = -1
          RETURN
        ENDIF
      ELSE
        IERR = -1
        RETURN
      ENDIF

      RETURN
      END
CDECK  ID>, PXYCR4.
      SUBROUTINE PXYCR4 (CMODE,NTRAK,ITKDM,PTRAK,YCUT,MXJET,
     +                   NJET,PJET,MINTR,IND,ITR,IERR)
*.*********************************************************
*. ------
*. PXYCR4
*. ------
*. THE YCLUS JET-FINDING ROUTINE OF S. BETHKE (JADE/MARKII/OPAL)
*.    References:
*.   (1) W. Bartel et al., Z. Phys. C33 (1986) 23.
*.   (2) S. Bethke et al., Phys. Lett. B213 (1988) 286.
*.   (3) M.Z. Akrawy et al., Z. Phys. C49 (1991) 375.
*. Usage     :
*.
*.      INTEGER  ITKDM,MXTRK
*.      PARAMETER  (ITKDM=4.or.more,MXTRK=1.or.more)
*.      INTEGER  MXJET,MXTKJT
*.      PARAMETER  (MXJET=10,MXTKJT=250)
*.      INTEGER  IND (MXTKJT),ITR (MXJET)
*.      INTEGER  NTRAK,NJET,IERR,MINTR
*.      REAL  PTRAK (ITKDM,MXTRK),PJET (4,MXJET)
*.      REAL  YCUT
*.      CHARACTER*2 CMODE
*.
*.      CMODE = 'E0', 'E', 'P0', 'P', 'D' OR 'G'
*.      NTRAK = 1.to.MXTRAK
*.      CALL PXYCR4 (CMODE,NTRAK,ITKDM,PTRAK,YCUT,MXJET,
*.     +             NJET,PJET,MINTR,IND,ITR,IERR)
*.
*. INPUT     :  CMODE     Recombination scheme (='E0','E','P0','P')
*.                       ('E0' is equivalent to the original JADE scheme)
*. INPUT     :  NTRAK     Number of particles
*. INPUT     :  ITKDM     First dimension of PTRAK array
*. INPUT     :  PTRAK     Array of particle 4-momenta (Px,Py,Pz,E)
*. INPUT     :  YCUT      (minimum scaled inv. pair mass)**2
*. INPUT     :  MXJET     Maximum possible number of jets
*. OUTPUT    :  NJET      Number of jets found
*. OUTPUT    :  PJET      4-vectors of jets
*. OUTPUT    :  MINTR     Smallest number of tracks assigned to a jet
*. OUTPUT    :  IND(k)    Particle k belongs to jet number IND(k)
*. OUTPUT    :  ITR(i)    Jet i contains ITR(i) particles
*. OUTPUT    :  IERR      = 0 if all is OK ;  = -1 otherwise
*.
*. CALLS     : PXPOSC,YKERN
*. CALLED    : User
*.
*. AUTHOR    :  S. BETHKE (JADE/MARKII/OPAL)
*. CREATED   :  1985
*. LAST MOD  :  06-NOV-92
*.
*. Modification Log.
*. 15-Jun-88   J.W.Gary  Integrate into PX library
*. 16-Nov-89   J.W.Gary  Improve array protection
*. 18-Aug-90   J.W.Gary  Fix unprotected DO LOOP, other restructuring
*. 14-Feb-91   S.BETHKE  - ADD DIFF. RECOMBINATION SCHEMES (IMODE !)
*.                       - AVOID DEAD LOOPS AND ERROR MESSAGES FOR
*.                         UNCOMMON EVENT STRCT'S (MONOJETS ARE O.K.)
*.                       - CALL WITH YCUT INSTEAD OF XMIN
*.                       - SPEED UP E0 SCHEME
*. 29-Jun-91  J.W.Gary  Recomb. scheme indexed with character value
*. 06-NOV-92  S.BETHKE  ADD NEW SCHEMES (DURHAM 'D' AND GENEVA 'G');
*.                      INTERFACE TO NEW JETFINDER KERNEL 'YKERN' AND
*.                      RELATED ROUTINES OF THE YCLUS PACKAGE.
*.
*.*********************************************************
      IMPLICIT NONE
C     IMPLICIT NONE
      INTEGER  MXYTRK
      PARAMETER  (MXYTRK=250)
      INTEGER  IND (*), ITR (*), BL(250)
      INTEGER  ITKDM,MINTR,IMODE,NTRAK,I,J,NJET,IERR,MXJET,IER
      REAL  PNJ(10,10),PTRAK (ITKDM,*),PJET (4,*),YCUT
      CHARACTER*(*) CMODE
C
C  +SEQ,JSCHEME.
      INTEGER  NSCHEM
      PARAMETER  (NSCHEM=6)
      CHARACTER*2  ZSCHEM (NSCHEM)
      SAVE  ZSCHEM
      DATA  ZSCHEM / 'E0','P ','P0','E ','D ','G ' /
C
      IERR = 0
      CALL PXPOSC (CMODE,NSCHEM,ZSCHEM,IMODE)
      IF (IMODE.EQ.-1) THEN
         WRITE (6,FMT='('' PXYCR4: Error, CMODE ='',A6,
     +      '' undefined'')') CMODE
         IERR = -1
         RETURN
      END IF
C
*  more than MXYTRK particles not allowed
*  ---- ---- ------ --------- --- -------
      IF (NTRAK.GT.MXYTRK) THEN
         WRITE (6,FMT='('' PXYCR4: WARNING, NTRAK ='',I6,
     +   ''  EXCEEDS LIMIT OF'',I4,''; RESET TO LIMIT!'')') NTRAK,MXYTRK
         NTRAK = MXYTRK
         IERR = 1
      END IF
*
*  CALL YKERN TO EXECUTE JET RECONSTRUCTION
*  ---- ----- -- ------- --- --------------
      CALL YKERN(IMODE,NTRAK,ITKDM,PTRAK,IER)
*  DETERMINE AND COPY RESULTS TO OUTPUT VARIABLES
*  --------- --- ---- ------- -- ------ ---------
      IF(IER.EQ.0) THEN
        CALL YNJET(YCUT,NJET,IER)
        IF (NJET.GT.MXJET) THEN
           WRITE (6,FMT='('' PXYCR4, ERROR, NJET ('',I6,
     +       '') EXCEEDS MXJET ('',I6,'')'')') NJET,MXJET
           IER = -1
        END IF
        IF(IER.EQ.0) CALL YASSO(NJET,PNJ,BL,IER)
        IF(IER.EQ.0) THEN
          DO 5001 I=1,NTRAK
            IND(I) = BL(I)
 5001     CONTINUE
          MINTR = 1000
          DO 5002 I=1,NJET
            ITR(I) = PNJ(7,I)
            IF(MINTR.GT.ITR(I)) MINTR = ITR(I)
            DO 5003 J=1,4
              PJET(J,I) = PNJ(J,I)
 5003       CONTINUE
 5002     CONTINUE
        ELSE
          IERR = -1
          RETURN
        ENDIF
      ELSE
        IERR = -1
        RETURN
      ENDIF

      RETURN
      END
CDECK  ID>, PXJRZ4.
      SUBROUTINE PXJRZ4 (CMODE,NTRAK,ITKDM,PTRAK,YREC,IERR)
*.*********************************************************
*. ------
*. PXJRZ4
*. ------
*. Extended JADE Jet-finder for jet counting with different
*. recombination schemes. No information on jet axes is
*. returned by this version.
*. This routine is the same as PXJRC4 except that it works with
*. a character argument for the recombination scheme choice.
*. Usage     :
*.
*.      INTEGER  ITKDM,MXTRK
*.      PARAMETER  (ITKDM=4.or.more,MXTRK=1.or.more)
*.      INTEGER  NTRAK,IERR
*.      REAL  PTRAK (ITKDM,MXTRK),YREC (5)
*.      CHARACTER*2 CMODE
*.
*.      CMODE = 'E0', 'E', 'P0', 'P', 'D' OR 'G'
*.      NTRAK = 1.to.MXTRAK
*.      CALL PXJRC4 (CMODE,NTRAK,ITKDM,PTRAK,YREC,IERR)
*.
*. INPUT     :  CMODE     Recombination scheme (='E0','E','P0','P')
*. INPUT     :  NTRAK     Number of particles
*. INPUT     :  ITKDM     First dimension of PTRAK array
*. INPUT     :  PTRAK     Array of particle 4-momenta (Px,Py,Pz,E)
*. OUTPUT    :  YREC      YREC(J):
*.                        YREC(2) is the value of Y where the event
*.                           .    flips from 3-jet to 2-jet
*.                           .
*.                           .
*.                        YREC(5) is the value of Y where the event
*.                                flips from 6-jet to 5-jet
*. OUTPUT    :  IERR      = 0 if all is OK ;  = -1 otherwise
*.
*. CALLS     : PXJRC4
*. CALLED    : User
*.
*. AUTHOR    : J.W.Gary
*. CREATED   : 21-Jun-91
*. LAST MOD  : 06-NOV-92
*.
*. Modification Log.
*. 06-NOV-92  S. BETHKE  ALLOW FOR NEW SCHEMES (DURHAM AND GENEVA)
*.
*.*********************************************************
      IMPLICIT NONE
C     IMPLICIT NONE
      INTEGER  IMODE,NTRAK,IERR,ITKDM
      REAL  PTRAK (ITKDM,*),YREC (*)
      CHARACTER*(*)  CMODE
C  +SEQ,JSCHEME.
      INTEGER  NSCHEM
      PARAMETER  (NSCHEM=6)
      CHARACTER*2  ZSCHEM (NSCHEM)
      SAVE  ZSCHEM
      DATA  ZSCHEM / 'E0','P ','P0','E ','D ','G ' /

      IERR = 0
      CALL PXPOSC (CMODE,NSCHEM,ZSCHEM,IMODE)
      IF (IMODE.EQ.-1) THEN
         WRITE (6,FMT='('' PXJRZ4: Error, CMODE ='',A6,
     +      '' undefined'')') CMODE
         IERR = -1
         GO TO 990
      END IF
      CALL PXJRC4 (IMODE,NTRAK,ITKDM,PTRAK,YREC,IERR)

 990  CONTINUE
      END
CDECK  ID>, PXJRC4.
      SUBROUTINE PXJRC4 (IMODE,NTRAK,ITKDM,PTRAK,YREC,IERR)
*.*********************************************************
*. ------
*. PXJRC4
*. ------
*. Extended JADE Jet-finder for jet counting with different
*. recombination schemes. No information on jet axes is
*. returned by this version.
*.
*. Y = (M/EVIS)**2 ; EVIS=SUM(E), where M depends on the scheme
*. Usage     :
*.
*.      INTEGER  ITKDM,MXTRK
*.      PARAMETER  (ITKDM=4.or.more,MXTRK=1.or.more)
*.      INTEGER  NTRAK,IERR,IMODE
*.      REAL  PTRAK (ITKDM,MXTRK),YREC (5)
*.
*.      NTRAK = 1.to.MXTRAK
*.      IMODE = 1, 2, 3 or 4
*.      CALL PXJRC4 (IMODE,NTRAK,ITKDM,PTRAK,YREC,IERR)
*.
*. INPUT     :  IMODE     Recombination scheme index :
*.                         IMODE = 1  : E0 (=JADE)
*.                                 2  : P
*.                                 3  : P0
*.                                 4  : E
*.                                 5  : DURHAM
*.                                 6  : GENEVA
*. INPUT     :  NTRAK     Number of particles
*. INPUT     :  ITKDM     First dimension of PTRAK array
*. INPUT     :  PTRAK     Array of particle 4-momenta (Px,Py,Pz,E)
*. OUTPUT    :  YREC      YREC(J):
*.                        YREC(2) is the value of Y where the event
*.                           .    flips from 3-jet to 2-jet
*.                           .
*.                           .
*.                        YREC(5) is the value of Y where the event
*.                                flips from 6-jet to 5-jet
*. OUTPUT    :  IERR      = 0 if all is OK ;  = -1 otherwise
*.
*. CALLS     :
*. CALLED    : User
*.
*. AUTHOR    :  S. Bethke
*. CREATED   :  ??
*. LAST MOD  : 28-JUL-99
*.
*. Modification Log.
*. 28-JUL-99   D. Chrisman - Introduce parameters NJETMX and NYCLMX, then
*.                           dimension YINT, PJET and HISTOR accordingly.
*.                           The dimensions of these arrays must be the 
*.                           same as in YKERN.
*. 18-Aug-88   J.W.Gary  Integrate into PX library
*. 06-NOV-92   S.BETHKE  ADD NEW SCHEMES (DURHAM,GENEVA); INTERFACE
*.                       TO NEW JET FINDER KERNEL YKERN
*.
*.*********************************************************
      IMPLICIT NONE
C     IMPLICIT NONE
      INTEGER  MXCTRK, NJETMX, NYCLMX
      PARAMETER (MXCTRK=250, NJETMX=20, NYCLMX=500)
      INTEGER  IMODE,NTRAK,IER,IERR,I,ITKDM,HISTOR(2,NYCLMX)
      REAL PTRAK(ITKDM,*),YREC(*),YINT(NJETMX),PJET(10,NJETMX,NJETMX)
      COMMON /YCL/YINT,PJET,HISTOR

      IERR = 0
*  more than MXYCRK particles not allowed
*  ---- ---- ------ --------- --- -------
      IF (NTRAK.GT.MXCTRK) THEN
         WRITE (6,FMT='('' PXJRC4: Error, NTRAK ='',
     +     ''exceeds'',I10,'' NTRAK ='',I10)') NTRAK,MXCTRK
         IERR = -1
         RETURN
      END IF
      CALL PXZERV (5,YREC)
*  CALL YKERN TO EXECUTE JET RECONSTRUCTION
*  ---- ----- -- ------- --- --------------
      CALL YKERN(IMODE,NTRAK,ITKDM,PTRAK,IER)
*  COPY VALUES OF YREC
*  ---- ------ -- ----
      IF(IER.EQ.0) THEN
        DO 5001 I=1,NJETMX
          YREC(I) = YINT(I)
 5001   CONTINUE
      ELSE
        IERR = -1
      ENDIF

      RETURN
      END
CDECK  ID>, PXCAMJ.
      SUBROUTINE PXCAMJ(ITKDM,NT,PT,YCUT,NJ,IJ,PJ,IERR)
C
C---CAMBRIDGE JET CLUSTERING ALGORITHM
C   BASED ON YCLUS BY S BETHKE
C   REF: YU L DOKSHITZER, G D LEDER, S MORETTI, B R WEBBER
C   CAVENDISH-HEP-97/06 (JUNE 1997)
C   07/07/97 FIRST RELEASED BY BRW
C   23/08/97 COMMENTS REVISED BY BRW
C
C   INPUT:
C    ITKDM = 1st dimension of array PT, ITKDM >= 4 required
C       NT = NUMBER OF TRACKS
C   PT(,I) = 4-MOMENTUM OF TRACK I (I=1,NT)
C     YCUT = (DURHAM) JET RESOLUTION
C
C  OUTPUT:
C       NJ = NUMBER OF JETS
C    IJ(I) = J IF TRACK I BELONGS TO JET J (I=1,NT)
C  PJ(4,J) = 4-MOMENTUM OF JET J (J=1,NJ)
C
C      NB:   CLUSTERING SEQUENCE DEPENDS ON VALUE OF YCUT
C
C  Modifications:
C  23.09.97, STK: Variable 1st dim for PT, REAL call args, handle
C                 errors with error flag IERR
C  24.09.97, STK: Improved error handling, sorted declarations,
C                 added welcome message
C  29.09.97, SB : Calculate EVIS from PT array; introduce to PX library
C-----------------------------------------------------------------------
      IMPLICIT NONE
      INTEGER ITKDM,NT,NJ,IJ(*),IERR
      REAL PT(ITKDM,*),EVIS,YCUT,PJ(4,*)
      INTEGER NTRK,NV
      PARAMETER( NTRK=300, NV=NTRK*(NTRK-2)+NTRK-(NTRK-2)*(NTRK-1)/2 )
      LOGICAL IP(NTRK),LCALL
      INTEGER I,II,J,K,L,IMINI,JMINI,IAD,JJ(NTRK)
      DOUBLE PRECISION PP(5),PL(5,NTRK),V(NV),PM,VMINI,YSCA
      SAVE LCALL
      DATA LCALL / .FALSE. /
C  Welcome message:
      IF( .NOT.LCALL ) THEN
        PRINT *, ' '
        PRINT *, 'Cambridge jet finding algorithm, please refer to:'
        PRINT *, 'Yu.L. Dokshitzer, G.D. Leder, S. Moretti, B.R. Webber'
        PRINT *, 'CAVENDISH-HEP-97/06 (June 1997)'
        PRINT *, ' '
        LCALL= .TRUE.
      ENDIF
C---WARNINGS
      IERR = 0
      EVIS = 0.
      IF( NT.GT.NTRK ) THEN
        WRITE(*,'(''CAMJET: More than '',I3,'' input particles: '',I5)')
     &        NTRK,NT
        IERR= 1
        RETURN
      ELSEIF( NT.LT.2 ) THEN
        WRITE(*,'(''CAMJET: Less than 2 input particles: '',I5)') NT
        IERR= 2
        RETURN
      ENDIF
C---COPY MOMENTA INTO PL-ARRAY
      DO I=1,NT
        IP(I)=.TRUE.
        IJ(I)=I
        DO II=1,4
          PL(II,I)= DBLE(PT(II,I))
        ENDDO
        PM=PL(1,I)**2+PL(2,I)**2+PL(3,I)**2
        EVIS = EVIS + PT(4,I)
        IF (PM.GT.0D0) THEN
          PL(5,I)=1D0/SQRT(PM)
        ELSE
          PL(5,I)=1D0
        ENDIF
      ENDDO
      YSCA= DBLE(YCUT)*DBLE(EVIS)**2
C---FILL V-ARRAY: V(I,J) IS V(NT*(I-1)+J-I(I+1)/2)
      IAD = 0
      DO I=1,NT-1
        DO II=1,5
          PP(II)=PL(II,I)
        ENDDO
        DO J=I+1,NT
          IAD = IAD + 1
          V(IAD) = 2D0*(1D0-(PP(1)*PL(1,J) +PP(2)*PL(2,J)
     &                      +PP(3)*PL(3,J))*PP(5)*PL(5,J))
        ENDDO
      ENDDO
      NJ=NT
C---START MAIN LOOP.  FIRST LOOK FOR MINIMUM V
    1 VMINI = 1D10
      IMINI = 0
      IAD = 0
      DO I=1,NT-1
        IF (IP(I)) THEN
          DO J=I+1,NT
            IAD = IAD + 1
            IF (IP(J).AND.V(IAD).LT.VMINI) THEN
              VMINI = V(IAD)
              IMINI = I
              JMINI = J
            ENDIF
          ENDDO
        ELSE
          IAD=IAD+NT-I
        ENDIF
      ENDDO
C---END OF CLUSTER SEARCH FOR VMINI
      IF (IMINI.NE.0) THEN
C---NOT FINISHED YET
        IF (VMINI*MIN(PL(4,IMINI),PL(4,JMINI))**2.GE.YSCA) THEN
C---SOFT FREEZING HERE
          IF (PL(4,IMINI).LT.PL(4,JMINI)) THEN
            IP(IMINI)=.FALSE.
          ELSE
            IP(JMINI)=.FALSE.
          ENDIF
        ELSE
C---COMBINE PARTICLES IMINI AND JMINI
          DO II=1,4
            PL(II,IMINI)=PL(II,IMINI)+PL(II,JMINI)
          ENDDO
          PM=PL(1,IMINI)**2+PL(2,IMINI)**2+PL(3,IMINI)**2
          IF (PM.GT.0D0) THEN
            PL(5,IMINI)=1D0/SQRT(PM)
          ELSE
            PL(5,IMINI)=1D0
          ENDIF
C---FLAG PARTICLE JMINI AS COMBINED
          IP(JMINI)=.FALSE.
          IJ(JMINI)=IMINI
          NJ=NJ-1
C---CALCULATE RELEVANT NEW V VALUES
          DO I=1,NT
            IF (I.NE.IMINI) THEN
              IF (IJ(I).EQ.JMINI) IJ(I)=IMINI
              IF (IP(I)) THEN
                K = MIN(I,IMINI)
                L = MAX(I,IMINI)
                IAD = NT*(K-1) + L - (K*(K+1))/2
                V(IAD) = 2D0*(1D0-(PL(1,K)*PL(1,L) +PL(2,K)*PL(2,L)
     &                            +PL(3,K)*PL(3,L))*PL(5,K)*PL(5,L))
              ENDIF
            ENDIF
          ENDDO
        ENDIF
C---BACK TO START OF LOOP
        GO TO 1
      ELSE
C---FINISHED: CONSTRUCT JETS
        J=0
        DO I=1,NT
          IF (IJ(I).EQ.I) THEN
            J=J+1
            JJ(I)=J
            DO II=1,4
              PJ(II,J)= SNGL(PL(II,I))
            ENDDO
          ENDIF
        ENDDO
        DO I=1,NT
          IJ(I)=JJ(IJ(I))
        ENDDO
      ENDIF
      END
CDECK  ID>, PXLCL5.
      SUBROUTINE PXLCL5 (NTRAK,ITKDM,PTRAK,IMODE,XMIN,MNJET,
     +                   MXJET,NJET,PJET,IPASS,IJMUL,IERR)
*.*********************************************************
*. ------
*. PXLCL5
*. ------
*. Jet-finding routine using the Jetset algorithm.
*. The implementation here is without a common block, however.
*. Thus this routine may be used regardless of whether the
*. Jetset6.3 or Jetset7.1 library might be linked.  It is
*. not necessary to link to Jetset, however.
*. Usage     :
*.
*.      INTEGER  ITKDM,MXTRK
*.      PARAMETER  (ITKDM=5.or.more,MXTRK=1.or.more)
*.      INTEGER  MXJET
*.      PARAMETER  (MXJET=10)
*.      INTEGER  IPASS (MXTRK),IJMUL (MXJET)
*.      INTEGER  NTRAK,NJET,IERR,IMODE,MNJET
*.      REAL  PTRAK (ITKDM,MXTRK),PJET (5,MXJET)
*.      REAL  XMIN
*.
*.      NTRAK = 1.to.MXTRAK
*.      IMODE = 1.to.4 (Jetset7.1 default = 1)
*.      XMIN  = 2.5    (Jetset7.1 default = 2.5 for IMODE = 1,2,3;
*.                                       = 0.05 for IMODE = 4)
*.      MNJET = 1.to.MXJET  (= 1 for most purposes)
*.      CALL PXLCL5 (NTRAK,ITKDM,PTRAK,IMODE,XMIN,MNJET,
*.     +             MXJET,NJET,PJET,IPASS,IJMUL,IERR)
*.
*. INPUT     : NTRAK     Total number of particles
*. INPUT     : ITKDM     First dimension of PTRAK array
*. INPUT     : PTRAK     Particle momentum array: Px,Py,Pz,E,M
*. INPUT     : IMODE     Jetfinder mode (= MSTU(46) in Jetset7.1)
*. INPUT     : XMIN      Jet resolution parameter
*.                           equivalent to PARU(44) for IMODE = 1,2,3
*.                           equivalent to PARU(45) for IMODE = 4
*. INPUT     : MNJET     The minimum number of jets to reconstruct
*. INPUT     : MXJET     The maximum number of jets permitted
*. OUTPUT    : NJET      Number of jets found
*. OUTPUT    : PJET      5-momenta of reconstructed jets
*. OUTPUT    : IPASS(k)  Particle k belongs to jet number IPASS(k)
*. OUTPUT    : IJMUL(i)  Jet i contains IJMUL(i) particles
*. OUTPUT    : IERR      = 0 if all is OK ;   = -1 otherwise
*.
*. CALLS     : PXLUC5,PXMAS4,PXPRNT,PXPRIV
*. CALLED    : By User
*.
*. AUTHOR    :  J.W.Gary
*. CREATED   :  19-Jun-88
*. LAST MOD  :  15-Feb-89
*.
*. Modification Log.
*. 15-Feb-89  Integrate with PXLUC5  J.W.Gary
*. 12-May-97 D. Chrisman, remove declaration of unused variables
*.             DMIN, MINTR and TGEN.
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  IOLUN,NRLUDM
      PARAMETER  (IOLUN=6,NRLUDM=2000)
      INTEGER  NTRAK,MXJET,IX1,IX2,ITKDM,NJET,IERR,NLUND,
     +         MSTU46,MSTU47,IMODE,MNJET
      INTEGER  IPASS (*),IJMUL (*)
      REAL  PTRAK (ITKDM,*),PLUND (NRLUDM,5),PJET (5,*)
      REAL  XMIN,PARU44,PARU45
      LOGICAL  LPRT
      DATA  LPRT / .FALSE. /

      IERR = 0
*  select jetfinder mode
*  ------ --------- ----
      MSTU46 = IMODE
      MSTU47 = MNJET
      IF (MSTU46.LT.1.OR.MSTU46.GT.4) THEN
          WRITE (6,FMT='(''PXLCL5: Error, MSTU46 ='',I12)') MSTU46
          GO TO 995
      END IF
      PARU44 = XMIN
      PARU45 = XMIN
      IF (NTRAK.LE.1) THEN
          WRITE (IOLUN,FMT='('' PXLCL5: Error, NTRAK ='',I4)')
     +           NTRAK
          GO TO 995
      END IF
*  Pack Jetset arrays
*  ---- ------ ------
      NLUND = NTRAK
      DO 110  IX1 = 1,NTRAK
          DO 100  IX2 = 1,5
              PLUND (IX1,IX2) = PTRAK (IX2,IX1)
 100      CONTINUE
 110  CONTINUE
*  Call Jetset routine for cluster-finding
*  ---- ------ ------- --- ------- -------
      CALL PXLUC5 (NLUND,NRLUDM,PLUND,MSTU46,MSTU47,
     +             PARU44,PARU45,NJET,IJMUL,IPASS)
      IF (NJET.LT.1) THEN
          WRITE (IOLUN,FMT='('' PXLCL5: ERROR, NJET='',
     +           I6)') NJET
          IERR = -1
          RETURN
      ELSE IF (NJET.GT.MXJET) THEN
          WRITE (IOLUN,FMT='
     +       ('' PXLCL5: ERROR, NJET='',I6,
     +        '' exceeds MXJET'',I6)') NJET,MXJET
          GO TO 995
      END IF
*  Copy jet 4-momenta to output buffer
*  ---- --- - ------- -- ------ ------
      DO 210  IX2 = 1,NJET
          DO 200  IX1 = 1,4
              PJET (IX1,IX2) = PLUND (NLUND+IX2,IX1)
 200      CONTINUE
          CALL PXMAS4 (PJET (1,IX2),PJET (5,IX2))
 210  CONTINUE
      IF (LPRT) THEN
          WRITE (IOLUN,FMT='('' PXLCL5:'')')
          CALL PXPRNT (1,NJET,5,5,PJET,'E')
          CALL PXPRIV ('IJMUL',NJET,IJMUL)
          CALL PXPRIV ('IPASS',NTRAK,IPASS)
      END IF

      RETURN
 995  IERR = -1
      RETURN
      END
CDECK  ID>, PXLUC5.
      SUBROUTINE PXLUC5 (N,NRLUDM,P,MSTU46,MSTU47,
     +                   PARU44,PARU45,NJET,IJMUL,IPASS)
*.*********************************************************
*. ------
*. PXLUC5
*. ------
*. An "in-house" version of the Jetset jet-finding algorithm
*. which works entirely through an argument list rather than
*. through e.g. the Jetset common blocks. Its operation is
*. therefore entirely decoupled from the the operation of Jetset
*. (i.e. the values of MST or MSTJ etc. in Jetset common do not
*. affect this routine whatsoever).
*. The main purpose of an in-house version of the
*. Jetset jetfinding algorithm is to have a version
*. which is compatible with both Jetset6.3 and Jetset7.1 etc.
*. (because of the change in the Jetset common blocks between
*. these two versions, the version of this algorithm in the
*. Jetset library is version specific).
*. The input arguments MSTU46, MSTU47, PARU44, PARU45 correspond
*. to the parameters MSTU(46), MSTU(47), PARU(44), PARU(45) of
*. Jetset7.1, see "A manual to ... Jetset7.1," T.Sjostrand
*. (filename "Jetset7.1 MANUAL A" on the Opal generator disk).
*.
*.      INTEGER  NRLUDM,MXJET
*.      PARAMETER (NRLUDM=1000.or.so,MXJET=10.or.so)
*.      INTEGER  IPASS (NRLUDM),IJMUL (MXJET)
*.      INTEGER  NTRAK,NJET
*.      REAL PLUND (NRLUDM,5)
*.      REAL  MSTU46,MSTU47,PARU44,PARU45
*.
*.      (define NTRAK, fill PLUND)
*.      CALL PXLUC5 (NTRAK,NRLUDM,PLUND,MSTU46,MSTU47,
*.     +             PARU44,PARU45,NJET,IJMUL,IPASS)
*.
*. INPUT     : NTRAK    Number of tracks
*. INPUT     : NRLUDM   First dimension of PLUND
*. IN/OUTPUT : PLUND    4-momenta in Jetset format
*. INPUT     : MSTU46   same as MSTU(46) in Jetset7.1:jet-finder mode
*. INPUT     : MSTU47   same as MSTU(47) in Jetset7.1
*. INPUT     : PARU44   same as PARU(44) in Jetset7.1
*. INPUT     : PARU45   same as PARU(45) in Jetset7.1
*. OUTPUT    : NJET      Number of jets found
*. OUTPUT    : IJMUL(i)  Jet i contains IJMUL(i) particles
*. OUTPUT    : IPASS(k)  Particle k belongs to jet number IPASS(k)
*.
*. CALLS     : PXANXY,PXPLU3,PXRMX3,PXROF3,PXROB3
*. CALLED    : PXLTH4
*.
*. AUTHOR    : Modified from LUCLUS (T.Sjostrand) by J.W.Gary
*. CREATED   : 31-Jan-89
*. LAST MOD  : 31-Jan-89
*.
*. Modification Log.
*. 05-May-97 D. Chrisman, remove declaration of unused variables
*.             I1, I2 and PMAS.
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  LOCDIM
      PARAMETER  (LOCDIM=2000)
      REAL PARU48,PIMAS,PARU43
      PARAMETER (PARU48=0.0001,PIMAS=0.13957,PARU43=0.25)
      INTEGER  MSTU42,MSTU48,MSTU43,MSTU46,MSTU47,ITRY1,ITRY2,
     +         I,J,IDEL,IREC,IEMP,IJET,IMIN,IMAX,NJET,NREM,
     +         INEW,IORI,NPRE,ISPL,NSAV,ITRY,NP,IMIN1,IMIN2,NRLUDM,
     +         N,NLOOP,IP,IJ
      INTEGER  K (LOCDIM,5),IJMUL (*),IPASS (*)
      REAL  PARU44,PARU45,R2MAX,PEMAX,RINIT,PXRR2M,PXRR2T,PSS,
     +      PMAX,R2,TSAV,PSJT,R2ACC,R2MIN,PXMAS
      REAL  P(NRLUDM,*),V(LOCDIM,5),PS(5)
      DATA  MSTU42 / 2 /,MSTU48 / 0 /, MSTU43 / 1 /

CC...If first time, reset. If reentering, skip preliminaries.
**JWG      IF(MSTU48.LE.0) THEN
        NP=0
        DO 100 J=1,5
  100   PS(J)=0.
        PSS=0.
**JWG      ELSE
**JWG        NJET=NSAV
**JWG        IF(MSTU43.GE.2) N=N-NJET
**JWG        DO 110 I=N+1,N+NJET
**JWG  110   P(I,5)=SQRT(P(I,1)**2+P(I,2)**2+P(I,3)**2)
**JWG        IF(MSTU46.LE.3) R2ACC=PARU44**2
**JWG        IF(MSTU46.GE.4) R2ACC=PARU45*PS(5)**2
**JWG        NLOOP=0
**JWG        GOTO 290
**JWG      ENDIF
C...Find which particles are to be considered in cluster search.
      DO 140 I=1,N
      IF(N+2*NP.GE.LOCDIM-5) THEN
          WRITE (6,FMT='('' PXLUC5: Error, not enough buffer'',
     +           ''space for jet-finer calculation'')')
          NJET = -1
          GO TO 990
      ENDIF
C...Take copy of these particles, with space left for jets later on.
      NP=NP+1
      K(N+NP,3)=I
      DO 120 J=1,5
  120 P(N+NP,J)=P(I,J)
**JWG      IF(MSTU42.EQ.0) P(N+NP,5)=0.
      PXMAS = P (I,5)
**JWG      IF(MSTU42.EQ.1.AND.PXMAS.NE.0) P(N+NP,5)=PIMAS
      P(N+NP,4)=SQRT(P(N+NP,5)**2+P(I,1)**2+P(I,2)**2+P(I,3)**2)
      P(N+NP,5)=SQRT(P(I,1)**2+P(I,2)**2+P(I,3)**2)
      DO 130 J=1,4
  130 PS(J)=PS(J)+P(N+NP,J)
      PSS=PSS+P(N+NP,5)
  140 CONTINUE
      DO 150 I=N+1,N+NP
      K(I+NP,3)=K(I,3)
      DO 150 J=1,5
  150 P(I+NP,J)=P(I,J)
      PS(5)=SQRT(MAX(0.,PS(4)**2-PS(1)**2-PS(2)**2-PS(3)**2))
C...Very low multiplicities not considered.
      IF(NP.LT.MSTU47) THEN
        NJET=-1
        RETURN
      ENDIF
C...Find precluster configuration. If too few jets, make harder cuts.
      NLOOP=0
      IF(MSTU46.LE.3) R2ACC=PARU44**2
      IF(MSTU46.GE.4) R2ACC=PARU45*PS(5)**2
      RINIT=1.25*PARU43
      IF(NP.LE.MSTU47+2) RINIT=0.
  160 RINIT=0.8*RINIT
      NPRE=0
      NREM=NP
      DO 170 I=N+NP+1,N+2*NP
  170 K(I,4)=0
C...Sum up small momentum region. Jet if enough absolute momentum.
      IF(MSTU46.LE.2) THEN
        DO 180 J=1,4
  180   P(N+1,J)=0.
        DO 200 I=N+NP+1,N+2*NP
        IF(P(I,5).GT.2.*RINIT) GOTO 200
        NREM=NREM-1
        K(I,4)=1
        DO 190 J=1,4
  190   P(N+1,J)=P(N+1,J)+P(I,J)
  200   CONTINUE
        P(N+1,5)=SQRT(P(N+1,1)**2+P(N+1,2)**2+P(N+1,3)**2)
        IF(P(N+1,5).GT.2.*RINIT) NPRE=1
        IF(RINIT.GE.0.2*PARU43.AND.NPRE+NREM.LT.MSTU47) GOTO 160
      ENDIF
C...Find fastest remaining particle.
  210 NPRE=NPRE+1
      PMAX=0.
      DO 220 I=N+NP+1,N+2*NP
      IF(K(I,4).NE.0.OR.P(I,5).LE.PMAX) GOTO 220
      IMAX=I
      PMAX=P(I,5)
  220 CONTINUE
      DO 230 J=1,5
  230 P(N+NPRE,J)=P(IMAX,J)
      NREM=NREM-1
      K(IMAX,4)=NPRE
C...Sum up precluster around it according to pT separation.
      IF(MSTU46.LE.2) THEN
        DO 250 I=N+NP+1,N+2*NP
        IF(K(I,4).NE.0) GOTO 250
        R2=PXRR2T(NRLUDM,P,I,IMAX)
        IF(R2.GT.RINIT**2) GOTO 250
        NREM=NREM-1
        K(I,4)=NPRE
        DO 240 J=1,4
  240   P(N+NPRE,J)=P(N+NPRE,J)+P(I,J)
  250   CONTINUE
        P(N+NPRE,5)=SQRT(P(N+NPRE,1)**2+P(N+NPRE,2)**2+P(N+NPRE,3)**2)
C...Sum up precluster around it according to mass separation.
      ELSE
  260   IMIN=0
        R2MIN=RINIT**2
        DO 270 I=N+NP+1,N+2*NP
        IF(K(I,4).NE.0) GOTO 270
        R2=PXRR2M(NRLUDM,P,I,N+NPRE)
        IF(R2.GE.R2MIN) GOTO 270
        IMIN=I
        R2MIN=R2
  270   CONTINUE
        IF(IMIN.NE.0) THEN
          DO 280 J=1,4
  280     P(N+NPRE,J)=P(N+NPRE,J)+P(IMIN,J)
          P(N+NPRE,5)=SQRT(P(N+NPRE,1)**2+P(N+NPRE,2)**2+P(N+NPRE,3)**2)
          NREM=NREM-1
          K(IMIN,4)=NPRE
          GOTO 260
        ENDIF
      ENDIF
C...Check if more preclusters to be found. Start over if too few.
      IF(RINIT.GE.0.2*PARU43.AND.NPRE+NREM.LT.MSTU47) GOTO 160
      IF(NREM.GT.0) GOTO 210
      NJET=NPRE
C...Reassign all particles to nearest jet. Sum up new jet momenta.
  290 TSAV=0.
      PSJT=0.
  300 IF(MSTU46.LE.1) THEN
        DO 310 I=N+1,N+NJET
        DO 310 J=1,4
  310   V(I,J)=0.
        DO 340 I=N+NP+1,N+2*NP
        R2MIN=PSS**2
        DO 320 IJET=N+1,N+NJET
        IF(P(IJET,5).LT.RINIT) GOTO 320
        R2=PXRR2T(NRLUDM,P,I,IJET)
        IF(R2.GE.R2MIN) GOTO 320
        IMIN=IJET
        R2MIN=R2
  320   CONTINUE
        K(I,4)=IMIN-N
        DO 330 J=1,4
  330   V(IMIN,J)=V(IMIN,J)+P(I,J)
  340   CONTINUE
        PSJT=0.
        DO 360 I=N+1,N+NJET
        DO 350 J=1,4
  350   P(I,J)=V(I,J)
        P(I,5)=SQRT(P(I,1)**2+P(I,2)**2+P(I,3)**2)
  360   PSJT=PSJT+P(I,5)
      ENDIF
C...Find two closest jets.
      R2MIN=2.*R2ACC
      DO 370 ITRY1=N+1,N+NJET-1
      DO 370 ITRY2=ITRY1+1,N+NJET
      IF(MSTU46.LE.2) R2=PXRR2T(NRLUDM,P,ITRY1,ITRY2)
      IF(MSTU46.GE.3) R2=PXRR2M(NRLUDM,P,ITRY1,ITRY2)
      IF(R2.GE.R2MIN) GOTO 370
      IMIN1=ITRY1
      IMIN2=ITRY2
      R2MIN=R2
  370 CONTINUE
C...If allowed, join two closest jets and start over.
      IF(NJET.GT.MSTU47.AND.R2MIN.LT.R2ACC) THEN
        IREC=MIN(IMIN1,IMIN2)
        IDEL=MAX(IMIN1,IMIN2)
        DO 380 J=1,4
  380   P(IREC,J)=P(IMIN1,J)+P(IMIN2,J)
        P(IREC,5)=SQRT(P(IREC,1)**2+P(IREC,2)**2+P(IREC,3)**2)
        DO 390 I=IDEL+1,N+NJET
        DO 390 J=1,5
  390   P(I-1,J)=P(I,J)
        IF(MSTU46.GE.2) THEN
          DO 400 I=N+NP+1,N+2*NP
          IORI=N+K(I,4)
          IF(IORI.EQ.IDEL) K(I,4)=IREC-N
  400     IF(IORI.GT.IDEL) K(I,4)=K(I,4)-1
        ENDIF
        NJET=NJET-1
        GOTO 290
C...Divide up broad jet if empty cluster in list of final ones.
      ELSEIF(NJET.EQ.MSTU47.AND.MSTU46.LE.1.AND.NLOOP.LE.2) THEN
        DO 410 I=N+1,N+NJET
  410   K(I,5)=0
        DO 420 I=N+NP+1,N+2*NP
  420   K(N+K(I,4),5)=K(N+K(I,4),5)+1
        IEMP=0
        DO 430 I=N+1,N+NJET
  430   IF(K(I,5).EQ.0) IEMP=I
        IF(IEMP.NE.0) THEN
          NLOOP=NLOOP+1
          ISPL=0
          R2MAX=0.
          DO 440 I=N+NP+1,N+2*NP
          IF(K(N+K(I,4),5).LE.1.OR.P(I,5).LT.RINIT) GOTO 440
          IJET=N+K(I,4)
          R2=PXRR2T(NRLUDM,P,I,IJET)
          IF(R2.LE.R2MAX) GOTO 440
          ISPL=I
          R2MAX=R2
  440     CONTINUE
          IF(ISPL.NE.0) THEN
            IJET=N+K(ISPL,4)
            DO 450 J=1,4
            P(IEMP,J)=P(ISPL,J)
  450       P(IJET,J)=P(IJET,J)-P(ISPL,J)
            P(IEMP,5)=P(ISPL,5)
            P(IJET,5)=SQRT(P(IJET,1)**2+P(IJET,2)**2+P(IJET,3)**2)
            IF(NLOOP.LE.2) GOTO 290
          ENDIF
        ENDIF
      ENDIF
C...If generalized thrust has not yet converged, continue iteration.
      IF(MSTU46.LE.1.AND.NLOOP.LE.2.AND.PSJT/PSS.GT.TSAV+PARU48)
     +THEN
        TSAV=PSJT/PSS
        GOTO 300
      ENDIF
C...Reorder jets according to energy.
      DO 460 I=N+1,N+NJET
      DO 460 J=1,5
  460 V(I,J)=P(I,J)
      DO 490 INEW=N+1,N+NJET
      PEMAX=0.
      DO 470 ITRY=N+1,N+NJET
      IF(V(ITRY,4).LE.PEMAX) GOTO 470
      IMAX=ITRY
      PEMAX=V(ITRY,4)
  470 CONTINUE
      K(INEW,1)=31
      K(INEW,2)=97
      K(INEW,3)=INEW-N
      K(INEW,4)=0
      DO 480 J=1,5
  480 P(INEW,J)=V(IMAX,J)
      V(IMAX,4)=-1.
  490 K(IMAX,5)=INEW
C...Clean up particle-jet assignments and jet information.
      DO 500 I=N+NP+1,N+2*NP
      IORI=K(N+K(I,4),5)
      K(I,4)=IORI-N
      IF(K(K(I,3),1).NE.3) K(K(I,3),4)=IORI-N
      K(IORI,4)=K(IORI,4)+1
  500 CONTINUE
      IEMP=0
      PSJT=0.
      DO 520 I=N+1,N+NJET
      K(I,5)=0
      PSJT=PSJT+P(I,5)
      P(I,5)=SQRT(MAX(P(I,4)**2-P(I,5)**2,0.))
      DO 510 J=1,5
  510 V(I,J)=0.
  520 IF(K(I,4).EQ.0) IEMP=I
C...Select storing option. Output variables. Check for failure.
      IF(IEMP.NE.0) THEN
        NJET=-1
      ENDIF
      NSAV=NJET
      DO 560  IJ = 1,NJET
          IJMUL (IJ) = K (N+IJ,4)
 560  CONTINUE
      DO 580  IP = 1,NP
          IPASS (IP) = K (IP,4)
 580  CONTINUE

 990  RETURN
      END

C...Functions: distance measure in pT or (pseudo)mass.
      FUNCTION PXRR2T (NRLUDM,P,I1,I2)
      IMPLICIT NONE
      INTEGER  NRLUDM,I1,I2
      REAL  P (NRLUDM,*),PXRR2T
      PXRR2T = (P(I1,5)*P(I2,5)-P(I1,1)*P(I2,1)-P(I1,2)*P(I2,2)-
     +P(I1,3)*P(I2,3))*2.*P(I1,5)*P(I2,5)/(0.0001+P(I1,5)+P(I2,5))**2
      RETURN
      END

      FUNCTION PXRR2M (NRLUDM,P,I1,I2)
      IMPLICIT NONE
      INTEGER  NRLUDM,I1,I2
      REAL  P (NRLUDM,*),PXRR2M
      PXRR2M = 2.*P(I1,4)*P(I2,4)*(1.-(P(I1,1)*P(I2,1)+P(I1,2)*
     +P(I2,2)+P(I1,3)*P(I2,3))/(P(I1,5)*P(I2,5)))
      RETURN
      END
CDECK  ID>, PXCONE.
      SUBROUTINE PXCONE (NTRAK,ITKDM,PTRAK,CONER,EPSLON,MXJET,
     +                   NJET,PJET,IPASS,IJMUL,IERR)
*.*********************************************************
*. ------
*. PXCONE
*. ------
*.
*.********** Pre Release Version 26.2.93
*.
*. Driver for the Cone  Jet finding algorithm of L.A. del Pozo.
*. Based on algorithm from D.E. Soper.
*. Finds jets inside cone of half angle CONER with energy > EPSLON.
*. Output jets are ordered in energy.
*. Usage     :
*.
*.      INTEGER  ITKDM,MXTRK
*.      PARAMETER  (ITKDM=4.or.more,MXTRK=1.or.more)
*.      INTEGER  MXJET, MXTRAK, MXPROT
*.      PARAMETER  (MXJET=10,MXTRAK=200,MXPROT=100)
*.      INTEGER  IPASS (MXTRAK),IJMUL (MXJET)
*.      INTEGER  NTRAK,NJET,IERR
*.      REAL  PTRAK (ITKDM,MXTRK),PJET (5,MXJET)
*.      REAL  CONER, EPSLON
*.      NTRAK = 1.to.MXTRAK
*.      CONER   = 0.7   (suggested value)
*.      EPSLON  = 7.0   (suggested value)
*.      CALL PXCONE (NTRAK,ITKDM,PTRAK,CONER,EPSLON,MXJET,
*.     +             NJET,PJET,IPASS,IJMUL,IERR)
*.
*. INPUT     :  NTRAK     Number of particles
*. INPUT     :  ITKDM     First dimension of PTRAK array
*. INPUT     :  PTRAK     Array of particle 4-momenta (Px,Py,Pz,E)
*. INPUT     :  CONER     Cone size (half angle) in radians
*. INPUT     :  EPSLON    Minimum Jet energy (GeV)
*. INPUT     :  MXJET     Maximum possible number of jets
*. OUTPUT    :  NJET      Number of jets found
*. OUTPUT    :  PJET      5-vectors of jets
*. OUTPUT    :  IPASS(k)  Particle k belongs to jet number IPASS(k)
*.                        IPASS = -1 if not assosciated to a jet
*. OUTPUT    :  IJMUL(i)  Jet i contains IJMUL(i) particles
*. OUTPUT    :  IERR      = 0 if all is OK ;   = -1 otherwise
*.
*. CALLS     : PXSEAR, PXSAME, PXNEW, PXTRY, PXORD, PXUVEC, PXOLAP
*. CALLED    : User
*.
*. AUTHOR    :  L.A. del Pozo
*. CREATED   :  26-Feb-93
*. LAST MOD  :  08-Oct-97
*.
*. Modification Log.
*. 08-Oct-97: D. Chrisman - Call PXADDV with the correct number 
*.                          of arguments.
*. 26-Jun-96: D. Chrisman - Save ROLD and EPSOLD
*. 3-Mar-93: L A del Pozo - Check Cone size is sensible.
*. 2-Mar-93: L A del Pozo - Fix Bugs in PXOLAP
*. 1-Mar-93: L A del Pozo - Remove Cern library routine calls
*. 1-Mar-93: L A del Pozo - Add Print out of welcome and R and Epsilon
*.
*.*********************************************************
      IMPLICIT NONE
*** External Arrays
      INTEGER  ITKDM,MXJET,NTRAK,NJET,IERR
      INTEGER  IPASS (*),IJMUL (MXJET)
      REAL  PTRAK (ITKDM,*),PJET (5,*), CONER, EPSLON
*** Internal Arrays
      INTEGER MXPROT, MXTRAK
      PARAMETER (MXPROT=100, MXTRAK=200)
      REAL PP(4,MXTRAK), PU(3,MXTRAK), PJ(4,MXPROT)
      LOGICAL JETLIS(MXPROT,MXTRAK)
*** Used in the routine.
      REAL COSR,COS2R, VSEED(3), VEC1(3), VEC2(3)
      LOGICAL UNSTBL
      INTEGER I,J,N,MU,N1,N2, ITERR
      REAL ROLD, EPSOLD
      SAVE ROLD, EPSOLD
      INTEGER NCALL, NPRINT
      SAVE NCALL,NPRINT
      DATA NCALL,NPRINT /0,0/
      IERR=0
*
*** INITIALIZE
      IF(NCALL.LE.0)  THEN
         ROLD = 0.
         EPSOLD = 0.
      ENDIF
      NCALL = NCALL + 1
*
*** Print welcome and Jetfinder parameters
      IF((CONER.NE.ROLD .OR. EPSLON.NE.EPSOLD) .AND. NPRINT.LE.10) THEN
         WRITE (6,*)
         WRITE (6,*) ' *********** PXCONE: Cone Jet-finder ***********'
         WRITE(6,1000)'   Cone Size R = ',CONER,' Radians'
         WRITE(6,1001)'   Min Jet energy Epsilon = ',EPSLON,' GeV'
         WRITE (6,*) ' ***********************************************'
         WRITE (6,*)
1000     FORMAT(A18,F5.2,A10)
1001     FORMAT(A29,F5.2,A5)
         NPRINT = NPRINT + 1
         ROLD=CONER
         EPSOLD=EPSLON
      ENDIF
*** Check input Value of R is sensible.
      IF (CONER .GT. 1.5708) THEN
         WRITE (6,*) ' PXCONE: CONER > 1.57 rad (90 degrees)'
         IERR=-1
         RETURN
      ENDIF
*
*** Copy calling array PTRAK  to internal array PP(4,NTRAK)
*
      IF (NTRAK .GT. MXTRAK) THEN
         WRITE (6,*) ' PXCONE: Ntrak too large'
         IERR=-1
         RETURN
      ENDIF
      DO  100 I=1, NTRAK
         DO  101 J=1,4
            PP(J,I)=PTRAK(J,I)
101      CONTINUE
100   CONTINUE
*
*** Zero output variables
*
      NJET=0
      DO 102 I = 1, NTRAK
         DO 103 J = 1, MXPROT
           JETLIS(J,I) = .FALSE.
103      CONTINUE
102   CONTINUE
      CALL PXZERV(4*MXPROT,PJ)
      CALL PXZERV(MXJET,IJMUL)
*
      COSR = COS(CONER)
      COS2R = COS(2*CONER)
      UNSTBL = .FALSE.
      CALL PXUVEC(NTRAK,PP,PU,IERR)
      IF (IERR .NE. 0) RETURN
*** Look for jets using particle diretions as seed axes
*
      DO 110 N = 1,NTRAK
        DO 120 MU = 1,3
          VSEED(MU) = PU(MU,N)
120     CONTINUE
        CALL PXSEAR(COSR,NTRAK,PU,PP,VSEED,
     +                   NJET,JETLIS,PJ,UNSTBL,IERR)
         IF (IERR .NE. 0) RETURN
110   CONTINUE
*** Now look between all pairs of jets as seed axes.
      DO 140 N1 = 1,NJET-1
         VEC1(1)=PJ(1,N1)
         VEC1(2)=PJ(2,N1)
         VEC1(3)=PJ(3,N1)
         CALL PXNORV(3,VEC1,VEC1,ITERR)
         DO 150 N2 = N1+1,NJET
            VEC2(1)=PJ(1,N2)
            VEC2(2)=PJ(2,N2)
            VEC2(3)=PJ(3,N2)
            CALL PXNORV(3,VEC2,VEC2,ITERR)
            CALL PXADDV(3,VEC1,VEC2,VSEED)
            CALL PXNORV(3,VSEED,VSEED,ITERR)
            CALL PXSEAR(COSR,NTRAK,PU,PP,VSEED,NJET,
     +      JETLIS,PJ,UNSTBL,IERR)
            IF (IERR .NE. 0) RETURN
150      CONTINUE
140   CONTINUE
      IF (UNSTBL) THEN
        IERR=-1
        WRITE (6,*) ' PXCONE: Too many iterations to find a proto-jet'
        RETURN
      ENDIF
*** Now put the jet list into order by jet energy, eliminating jets
*** with energy less than EPSLON.
       CALL PXORD(EPSLON,NJET,NTRAK,JETLIS,PJ)
*
*** Take care of jet overlaps
       CALL PXOLAP(NJET,NTRAK,JETLIS,PJ,PP)
*
*** Order jets again as some have been eliminated, or lost energy.
       CALL PXORD(EPSLON,NJET,NTRAK,JETLIS,PJ)
*
*** All done!, Copy output into output arrays
      IF (NJET .GT. MXJET) THEN
         WRITE (6,*) ' PXCONE:  Found more than MXJET jets'
         IERR=-1
         GOTO 99
      ENDIF
      DO 300 I=1, NJET
         DO 310 J=1,4
            PJET(J,I)=PJ(J,I)
310      CONTINUE
300   CONTINUE
      DO 320 I=1, NTRAK
         IPASS(I)=-1
         DO 330 J=1, NJET
            IF (JETLIS(J,I)) THEN
               IJMUL(J)=IJMUL(J)+1
               IPASS(I)=J
            ENDIF
330      CONTINUE
320   CONTINUE
99    RETURN
      END
CDECK  ID>, PXSEAR.
******............................................................******
      SUBROUTINE PXSEAR(COSR,NTRAK,PU,PP,VSEED,NJET,
     +                JETLIS,PJ,UNSTBL,IERR)
******............................................................******
*
      IMPLICIT NONE
      INTEGER MXTRAK, MXPROT
      PARAMETER (MXTRAK=200,MXPROT=100)
      INTEGER NTRAK, IERR
      REAL COSR,PU(3,MXTRAK),PP(4,MXTRAK),VSEED(3)
      LOGICAL UNSTBL
      LOGICAL JETLIS(MXPROT,MXTRAK)
      INTEGER NJET
      REAL  PJ(4,MXPROT)
*** Using VSEED as a trial axis , look for a stable jet.
*** Check stable jets against those already found and add to PJ.
*** Will try up to MXITER iterations to get a stable set of particles
*** in the cone.
      INTEGER MU,N,ITER
      LOGICAL PXSAME,PXNEW,OK
      LOGICAL NEWLIS(MXTRAK),OLDLIS(MXTRAK)
      REAL OAXIS(3),NAXIS(3),PNEW(4)
      INTEGER MXITER
      PARAMETER(MXITER = 30)
*
      DO 100 MU=1,3
        OAXIS(MU) = VSEED(MU)
100   CONTINUE
      DO 110 N = 1,NTRAK
        OLDLIS(N) = .FALSE.
110   CONTINUE
      DO 120 ITER = 1,MXITER
        CALL PXTRY(COSR,NTRAK,PU,PP,OAXIS,NAXIS,PNEW,NEWLIS,OK)
*** Return immediately if there were no particles in the cone.
       IF (.NOT.OK) THEN
         RETURN
       ENDIF
       IF(PXSAME(NEWLIS,OLDLIS,NTRAK)) THEN
*** We have a stable jet.
             IF (PXNEW(NEWLIS,JETLIS,NTRAK,NJET)) THEN
*** And the jet is a new one. So add it to our arrays.
*** Check arrays are big anough...
             IF (NJET .EQ. MXPROT) THEN
             WRITE (6,*) ' PXCONE:  Found more than MXPROT proto-jets'
                IERR = -1
                RETURN
             ENDIF
               NJET = NJET + 1
               DO 130 N = 1,NTRAK
                 JETLIS(NJET,N) = NEWLIS(N)
130            CONTINUE
               DO 140 MU=1,4
                 PJ(MU,NJET)=PNEW(MU)
140          CONTINUE
             ENDIF
             RETURN
       ENDIF
*** The jet was not stable, so we iterate again
       DO 150 N=1,NTRAK
         OLDLIS(N)=NEWLIS(N)
150    CONTINUE
       DO 160 MU=1,3
         OAXIS(MU)=NAXIS(MU)
160    CONTINUE
120   CONTINUE
      UNSTBL = .TRUE.
      RETURN
      END
*
CDECK  ID>, PXSAME.
******............................................................******
       LOGICAL FUNCTION PXSAME(LIST1,LIST2,N)
******............................................................******
      IMPLICIT NONE
*
       LOGICAL LIST1(*),LIST2(*)
       INTEGER N
*** Returns T if the first N elements of LIST1 are the same as the
*** first N elements of LIST2.
       INTEGER I
*
       PXSAME = .TRUE.
       DO 100 I = 1,N
        IF ( LIST1(I).NEQV.LIST2(I) ) THEN
          PXSAME = .FALSE.
          RETURN
        ENDIF
100    CONTINUE
       RETURN
       END
*
CDECK  ID>, PXNEW.
******............................................................******
       LOGICAL FUNCTION PXNEW(TSTLIS,JETLIS,NTRAK,NJET)
******............................................................******
      IMPLICIT NONE
*
      INTEGER MXTRAK,MXPROT
      PARAMETER (MXTRAK=200,MXPROT=100)
       INTEGER NTRAK,NJET
       LOGICAL TSTLIS(MXTRAK),JETLIS(MXPROT,MXTRAK)
*** Checks to see if TSTLIS entries correspond to a jet already found
*** and entered in JETLIS
       INTEGER N, I
       LOGICAL MATCH
*
       PXNEW = .TRUE.
       DO 100 I = 1,NJET
          MATCH = .TRUE.
          DO 110 N = 1,NTRAK
            IF(TSTLIS(N).NEQV.JETLIS(I,N)) THEN
             MATCH = .FALSE.
             GO TO 100
            ENDIF
110       CONTINUE
          IF (MATCH) THEN
           PXNEW = .FALSE.
           RETURN
          ENDIF
100    CONTINUE
       RETURN
       END
*
CDECK  ID>, PXTRY.
******............................................................******
       SUBROUTINE PXTRY(COSR,NTRAK,PU,PP,OAXIS,NAXIS,PNEW,NEWLIS,OK)
******............................................................******
*
      IMPLICIT NONE
      INTEGER MXTRAK
      PARAMETER (MXTRAK=200)
       INTEGER NTRAK
       REAL COSR,PU(3,MXTRAK),PP(4,MXTRAK),OAXIS(3)
       LOGICAL OK
       LOGICAL NEWLIS(MXTRAK)
       REAL NAXIS(3),PNEW(4)
*** Finds all particles in cone of size COSR about OAXIS direction.
*** Calculates 4-momentum sum of all particles in cone (PNEW) , and
*** returns this as new jet axis NAXIS (Both unit Vectors)
       INTEGER N,MU
       REAL COSVAL,NORMSQ,NORM
*
       OK = .FALSE.
       DO 100 MU=1,4
          PNEW(MU)=0.0
100    CONTINUE
       DO 110 N=1,NTRAK
          COSVAL=0.0
          DO 120 MU=1,3
             COSVAL=COSVAL+OAXIS(MU)*PU(MU,N)
120       CONTINUE
          IF (COSVAL.GE.COSR)THEN
             NEWLIS(N) = .TRUE.
             OK = .TRUE.
             DO 130 MU=1,4
                PNEW(MU) = PNEW(MU) + PP(MU,N)
130          CONTINUE
          ELSE
             NEWLIS(N)=.FALSE.
          ENDIF
110   CONTINUE
*** If there are particles in the cone, calc new jet axis
       IF (OK) THEN
          NORMSQ = 0.0
          DO 140 MU = 1,3
            NORMSQ = NORMSQ + PNEW(MU)**2
140       CONTINUE
          NORM = SQRT(NORMSQ)
          DO 150 MU=1,3
            NAXIS(MU) = PNEW(MU)/NORM
150       CONTINUE
       ENDIF
       RETURN
       END
*
CDECK  ID>, PXORD.
******............................................................******
       SUBROUTINE PXORD(EPSLON,NJET,NTRAK,JETLIS,PJ)
******............................................................******
*
*** Routine to put jets into order and eliminate tose less than EPSLON
*.
*. Modification Log.
*. 22-Apr-97: D. Chrisman - Dimension ELIST and INDEX with MXPROT
*.                          instead of 100.
*.
      IMPLICIT NONE
      INTEGER MXTRAK,MXPROT
      PARAMETER (MXTRAK=200,MXPROT=100)
      INTEGER I, J, INDEX(MXPROT)
      REAL PTEMP(4,MXPROT), ELIST(MXPROT)
      INTEGER NJET,NTRAK
      LOGICAL JETLIS(MXPROT,MXTRAK)
      LOGICAL LOGTMP(MXPROT,MXTRAK)
      REAL EPSLON,PJ(4,MXPROT)
*** Puts jets in order of energy: 1 = highest energy etc.
*** Then Eliminate jets with energy below EPSLON
*
*** Copy input arrays.
      DO 100 I=1,NJET
         DO 110 J=1,4
            PTEMP(J,I)=PJ(J,I)
110      CONTINUE
         DO 120 J=1,NTRAK
            LOGTMP(I,J)=JETLIS(I,J)
120      CONTINUE
100   CONTINUE
      DO 150 I=1,NJET
         ELIST(I)=PJ(4,I)
150   CONTINUE
*** Sort the energies...
      CALL PXSORV(NJET,ELIST,INDEX,'I')
*** Fill PJ and JETLIS according to sort ( sort is in ascending order!!)
      DO 200 I=1, NJET
         DO 210 J=1,4
            PJ(J,I)=PTEMP(J,INDEX(NJET+1-I))
210      CONTINUE
         DO 220 J=1,NTRAK
            JETLIS(I,J)=LOGTMP(INDEX(NJET+1-I),J)
220      CONTINUE
200   CONTINUE
** Jets are now in order
*** Now eliminate jets with less than Epsilon energy
      DO 300, I=1, NJET
         IF (PJ(4,I) .LT. EPSLON) THEN
            NJET=NJET-1
            PJ(4,I)=0.
         ENDIF
300   CONTINUE
      RETURN
      END
CDECK  ID>, PXUVEC.
*
******............................................................******
       SUBROUTINE PXUVEC(NTRAK,PP,PU,IERR)
******............................................................******
*
*** Routine to calculate unit vectors PU of all particles PP
      IMPLICIT NONE
      INTEGER MXTRAK
      PARAMETER (MXTRAK=200)
      INTEGER NTRAK, IERR
      REAL PP(4,MXTRAK)
      REAL PU(3,MXTRAK)
      INTEGER N,MU
      REAL MAG
       DO 100 N=1,NTRAK
          MAG=0.0
          DO 110 MU=1,3
             MAG=MAG+PP(MU,N)**2
110       CONTINUE
          MAG=SQRT(MAG)
          IF (MAG.EQ.0.0) THEN
             WRITE(*,*)' PXCONE: An input particle has zero mod(p)'
             IERR=-1
             RETURN
          ENDIF
          DO 120 MU=1,3
           PU(MU,N)=PP(MU,N)/MAG
120       CONTINUE
100    CONTINUE
       RETURN
       END
*
CDECK  ID>, PXOLAP.
******............................................................******
      SUBROUTINE PXOLAP(NJET,NTRAK,JETLIS,PJ,PP)
******............................................................******
*
*** Looks for particles assigned to more than 1 jet, and reassigns them
*** If more than a fraction OVLIM of a jet's energy is contained in
*** higher energy jets, that jet is neglected.
*** Particles assigned to the jet closest in angle (a la CDF, Snowmass).
*.
*. Modification Log.
*. 22-Apr-97: D. Chrisman - Dimension IJET with MXPROT instead of 30.
*.
      IMPLICIT NONE
      INTEGER MXTRAK, MXPROT
      PARAMETER (MXTRAK=200,MXPROT=100)
      INTEGER NJET, NTRAK
      LOGICAL JETLIS(MXPROT,MXTRAK)
      REAL PJ(4,MXPROT),PP(4,MXTRAK)
      INTEGER I,J,N,MU
      LOGICAL OVELAP
      REAL EOVER
      REAL OVLIM
      INTEGER ITERR, IJMIN, IJET(MXPROT), NJ
      REAL VEC1(3), VEC2(3), COST, THET, THMIN
      PARAMETER (OVLIM = 0.75)
*
      IF (NJET.LE.1) RETURN
*** Look for jets with large overlaps with higher energy jets.
      DO 100 I = 2,NJET
*** Find overlap energy between jets I and all higher energy jets.
       EOVER = 0.0
       DO 110 N = 1,NTRAK
         OVELAP = .FALSE.
         DO 120 J= 1,I-1
           IF (JETLIS(I,N).AND.JETLIS(J,N)) THEN
            OVELAP = .TRUE.
           ENDIF
120      CONTINUE
         IF (OVELAP) THEN
           EOVER = EOVER + PP(4,N)
         ENDIF
110     CONTINUE
*** Is the fraction of energy shared larger than OVLIM?
        IF (EOVER.GT.OVLIM*PJ(4,I)) THEN
*** De-assign all particles from Jet I
            DO 130 N = 1,NTRAK
              JETLIS(I,N) = .FALSE.
130         CONTINUE
         ENDIF
100   CONTINUE
*** Now there are no big overlaps, assign every particle in
*** more than 1 jet to the closet jet.
*** Any particles now in more than 1 jet are assigned to the CLOSET
*** jet (in angle).
      DO 140 I=1,NTRAK
         NJ=0
         DO 150 J=1, NJET
         IF(JETLIS(J,I)) THEN
            NJ=NJ+1
            IJET(NJ)=J
         ENDIF
150      CONTINUE
         IF (NJ .GT. 1) THEN
*** Particle in > 1 jet - calc angles...
            VEC1(1)=PP(1,I)
            VEC1(2)=PP(2,I)
            VEC1(3)=PP(3,I)
            THMIN=0.
            DO 160 J=1,NJ
               VEC2(1)=PJ(1,IJET(J))
               VEC2(2)=PJ(2,IJET(J))
               VEC2(3)=PJ(3,IJET(J))
               CALL PXANG3(VEC1,VEC2,COST,THET,ITERR)
               IF (J .EQ. 1) THEN
                  THMIN=THET
                  IJMIN=IJET(J)
               ELSEIF (THET .LT. THMIN) THEN
                  THMIN=THET
                  IJMIN=IJET(J)
               ENDIF
160         CONTINUE
*** Assign track to IJMIN
            DO 170 J=1,NJET
               JETLIS(J,I) = .FALSE.
170         CONTINUE
            JETLIS(IJMIN,I)=.TRUE.
         ENDIF
140   CONTINUE
*** Recompute PJ
      DO 200 I = 1,NJET
        DO 210 MU = 1,4
          PJ(MU,I) = 0.0
210     CONTINUE
        DO 220 N = 1,NTRAK
          IF( JETLIS(I,N) ) THEN
            DO 230 MU = 1,4
             PJ(MU,I) = PJ(MU,I) + PP(MU,N)
230         CONTINUE
          ENDIF
220     CONTINUE
200   CONTINUE
      RETURN
      END
CDECK  ID>, PXANAL.
      SUBROUTINE PXANAL (NRTOPR,ITKDM,NTRAK,PTRAK)
*.*********************************************************
*. ------
*. PXANAL
*. ------
*. Analysis routine for testing Jet-finding, Thrust routines,
*. Fox-Wolfram moments etc. from the PX library
*. Usage     :
*.
*.      INTEGER  ITKDM,MXTRK
*.      PARAMETER  (ITKDM=6.or.more,MXTRK=1.or.more)
*.      INTEGER  NTRAK,NRTOPR
*.      REAL  PTRAK (ITKDM,MXTRAK)
*.
*.      NTRAK = 1.to.MXTRAK
*.      NRTOPR = 0.or.more
*.      CALL PXANAL (NRTOPR,ITKDM,NTRAK,PTRAK)
*.
*. INPUT     : NRTOPR   Number of events for debug print-out
*. INPUT     : ITKDM    First dimension of PTRAK
*.                      (>=6 for this routine)
*. INPUT     : NTRAK    Number of tracks in PTRAK
*. INPUT     : PTRAK    The particle 4-momentum (Px,Py,Pz,E)
*. Note:
*. This routine requires that ITKDM, the first dimension of the
*. track array PTRAK, be at least six.  On input, the first four
*. elements of each track vector I should contain the 4-momenta of
*. the track.  Elements five and six should be empty as they are
*. filled in this routine, i.e. for each track I:
*.
*.   PTRAK (1,I) = Px
*.   PTRAK (2,I) = Py
*.   PTRAK (3,I) = Pz
*.   PTRAK (4,I) = E
*.   PTRAK (5,I) = empty -->  Mass of particle
*.                            (filled in this routine)
*.   PTRAK (6,I) = empty -->  Magnitude of 3-vector
*.                            (filled in this routine)
*.     .
*.     .
*.     .
*.   PTRAK (ITKDM,I) = anything
*.
*. PX CALLS    : PXICNT,PXPRNT,PXZERV,PXADDV,PXMAS4,
*.               PXMAGV,PXTTH3,PXLTH4,PXJSP3,PXJTR4,
*.               PXLCL5,PXANG3,PXSORV,PXFOX4,PXPRRV
*. Other CALLS : HF1,HBOOK1
*. CALLED    : User routine
*.
*. AUTHOR    :  J.W.Gary
*. CREATED   :  08-Jul-88
*. LAST MOD  :  08-Oct-97
*.
*. Modification Log.
*. 01-Jul-91  J.W.Gary change to PXJTR4 for Jetfinding
*. 12-May-97  D. Chrisman, remove declaration of unused variables
*.              OBL, IANX, SPH, THR, APL and MINTR.
*. 08-Oct-97  D. Chrisman, Call PXTTH3 by passing it only the first
*.        element of the array THRVAL. PXTTH3 only returns a scalar.
*.
*.*********************************************************
      IMPLICIT NONE
      REAL VMX
      PARAMETER  (VMX=0.)
      INTEGER  MXJET,MXTKJT,IOLUN,NFOXM
      PARAMETER  (MXJET=10,MXTKJT=150,IOLUN=6,NFOXM=10)
      INTEGER  KIX (MXJET*MXJET)
      INTEGER  NTRAK,IX1,IX2,IERR,NRTOPR,ICNT,IN,ITKDM,IMODE,MNJET
      REAL  PTRAK (ITKDM,*),EVEC (3,3),EVAL (3),
     +      THRVAL (3),THRVEC (3,3),PSUM (4)
      REAL  COST,THET,EVISIB,XMIN,FWZER,YCUT
      INTEGER  IND (MXTKJT),ITR (MXJET)
      INTEGER  NJET,NLJET,IORD
      REAL  PJET (5,MXJET),PLJET (5,MXJET),ANGS (MXJET*MXJET),
     +      FWNOR (NFOXM)

*  (1) check event count (incremented in main event loop)
*      ----- ----- -----  ----------- -- ---- ----- ----
      CALL PXICNT (' ',ICNT)
      IF (ICNT.LE.NRTOPR) THEN
*  (2)  print-out of event 4-momenta
*       ----- --- -- ----- - -------
          WRITE (IOLUN,FMT='('' ***>> PXANAL'')')
          CALL PXPRNT (1,NTRAK,ITKDM,4,PTRAK,'4')
      END IF
      CALL PXZERV (4,PSUM)
*  (3) sum momenta, fill 5th and 6th positions of PTRAK
*      --- -------  ---- --- --- --- --------- -- -----
      DO 210 IX1 = 1,NTRAK
          CALL PXADDV (4,PTRAK (1,IX1),PSUM,PSUM)
          CALL PXMAS4 (PTRAK (1,IX1),PTRAK (5,IX1))
          CALL PXMAGV (3,PTRAK (1,IX1),PTRAK (6,IX1))
 210  CONTINUE
*  (4) calculate visible energy, print-out
*      --------- ------- ------  ----- ---
      EVISIB = PSUM (4)
      IF (ICNT.LE.NRTOPR) THEN
          CALL PXPRNT (1,NTRAK,ITKDM,6,PTRAK,'E')
          CALL PXPRNT (1,1,4,4,PSUM,'4')
          WRITE (IOLUN,FMT='('' PXANAL:  EVISIB ='',E12.4)') EVISIB
      END IF
*  (5) Tasso thrust routine
*      ----- ------ -------
      CALL PXTTH3 (NTRAK,ITKDM,PTRAK,THRVAL(1),THRVEC,IERR)
      IF (IERR.NE.0) THEN
          WRITE (6,FMT='('' PXANAL: PXLTHR IERR ='',I6)') IERR
      ELSE IF (ICNT.LE.NRTOPR) THEN
          WRITE (IOLUN,FMT='(/'' THRUST, Tasso routine'')')
          CALL PXPRNT (1,1,3,3,THRVEC,'E')
          CALL PXPRNT (1,1,3,1,THRVAL,'E')
      END IF
*  (6) Jetset thrust calculation
*      ------ ------ -----------
      CALL PXLTH4 (NTRAK,ITKDM,PTRAK,THRVAL,THRVEC,IERR)
      IF (IERR.NE.0) THEN
          WRITE (6,FMT='('' PXANAL: PXLTHR IERR ='',I6)') IERR
      ELSE IF (ICNT.LE.NRTOPR) THEN
          WRITE (IOLUN,FMT='(/'' THRUST, Jetset routine'')')
          CALL PXPRNT (1,3,3,3,THRVEC,'E')
          CALL PXPRNT (1,1,3,3,THRVAL,'E')
      END IF
*  (7) Sphericity routine
*      ---------- -------
      CALL PXJSP3 (NTRAK,ITKDM,PTRAK,EVAL,EVEC,IERR)
      IF (IERR.NE.0) THEN
          WRITE (6,FMT='('' PXANAL: PXJSP3 IERR ='',I6)') IERR
      ELSE IF (ICNT.LE.NRTOPR) THEN
          WRITE (IOLUN,FMT='(/'' SPHERICITY, direct call'')')
          CALL PXPRNT (1,3,3,3,EVEC,'E')
          CALL PXPRNT (1,1,3,3,EVAL,'E')
      END IF
*  (9) YCLUS (''JADE'') jet-finding
*      -----  --------  --- -------
      YCUT = 0.04
      CALL PXJTR4 ('E0',NTRAK,ITKDM,PTRAK,YCUT,MXJET,
     +             NJET,PJET,IND,ITR,IERR)
      IF (IERR.NE.0) THEN
          WRITE (6,FMT='('' PXANAL: PXJTR4 IERR ='',I6)') IERR
      ELSE IF (ICNT.LE.NRTOPR) THEN
          WRITE (IOLUN,FMT='(/'' YCLUS, direct call'')')
          CALL PXPRNT (1,NJET,5,5,PJET,'E')
          CALL PXPRIV ('ITR',NJET,ITR)
          CALL PXPRIV ('IND',NTRAK,IND)
      END IF
      CALL HF1 (510,FLOAT (NJET),1.)
* (10) Jetset jet-finding
*      ------ --- -------
CC      IMODE = 1
CC      XMIN = 2.5
      IMODE = 4
      XMIN = 0.05
      MNJET = 1
      CALL PXLCL5 (NTRAK,ITKDM,PTRAK,IMODE,XMIN,MNJET,
     +             MXJET,NLJET,PLJET,IND,ITR,IERR)
      IF (IERR.NE.0) THEN
          WRITE (6,FMT='('' PXANAL: PXLCLU IERR ='',I6)') IERR
      ELSE IF (ICNT.LE.NRTOPR) THEN
          WRITE (IOLUN,FMT='(/'' Jetset jet-finder'')')
          CALL PXPRNT (1,NLJET,5,5,PLJET,'E')
          CALL PXPRIV ('ITR',NLJET,ITR)
          CALL PXPRIV ('IND',NTRAK,IND)
      END IF
      CALL HF1 (511,FLOAT (NLJET),1.)
* (11) compare the directions of the jets found by the two jet-finders
*      ------- --- ---------- -- --- ---- ----- -- --- --- --- -------
      IF (NJET.EQ.NLJET) THEN
          IN = 0
          DO 320 IX1 = 1,NJET
              DO 310  IX2 = 1,NJET
                  IN = IN + 1
                  CALL PXANG3 (PJET (1,IX1),PLJET (1,IX2),
     +                         COST,THET,IERR)
                  ANGS (IN) = THET * (180./3.14159)
 310          CONTINUE
 320      CONTINUE
          IF (ICNT.LE.NRTOPR) THEN
              WRITE (6,FMT='('' Compare YCLUS/Jetset: NJET ='',
     +                I6)') NJET
              CALL PXPRNT (1,1,10,10,ANGS,'F')
          END IF
          CALL PXSORV (NJET*NJET,ANGS,KIX,'A')
          IF (ICNT.LE.NRTOPR) THEN
              CALL PXPRNT (1,1,10,10,ANGS,'F')
              WRITE (6,FMT='('' KIX ='',10I5)') (KIX (IX1),IX1=1,10)
          END IF
          IF (NJET.GE.1.AND.NJET.LE.4) THEN
              IX1 = -1
              IF (NJET.EQ.3) IX1 = 1
              IF (NJET.EQ.4) IX1 = 4
              DO  340 IN = 1,NJET
                  CALL HF1 (500+IX1+IN,ANGS (IN),1.)
 340          CONTINUE
          END IF
      END IF
* (12) Fox-Wolfram moments
*      ----------- -------
      IORD = 5
      CALL PXFOX4 (IORD,NTRAK,ITKDM,PTRAK,FWZER,FWNOR,IERR)
      IF (ICNT.LE.NRTOPR) THEN
          CALL PXPRRV ('FWZER',1,FWZER)
          CALL PXPRRV ('FWNOR',IORD,FWNOR)
      END IF

      RETURN
*  histogram booking for this routine
*  --------- ------- --- ---- -------
      ENTRY PXTSBK

      CALL HBOOK1 (510,'Number Jets (PXYCLU)',10,0.,10.,VMX)
      CALL HBOOK1 (511,'Number Jets (PXLCLU)',10,0.,10.,VMX)
      CALL HBOOK1 (500,'2Jets: Ang(Lund-Yclus);Jet 1',100,0.,90.,VMX)
      CALL HBOOK1 (501,'2Jets: Ang(Lund-Yclus);Jet 2',100,0.,90.,VMX)
      CALL HBOOK1 (502,'3Jets: Ang(Lund-Yclus);Jet 1',100,0.,90.,VMX)
      CALL HBOOK1 (503,'3Jets: Ang(Lund-Yclus);Jet 2',100,0.,90.,VMX)
      CALL HBOOK1 (504,'3Jets: Ang(Lund-Yclus);Jet 3',100,0.,90.,VMX)
      CALL HBOOK1 (505,'4Jets: Ang(Lund-Yclus);Jet 1',100,0.,90.,VMX)
      CALL HBOOK1 (506,'4Jets: Ang(Lund-Yclus);Jet 2',100,0.,90.,VMX)
      CALL HBOOK1 (507,'4Jets: Ang(Lund-Yclus);Jet 3',100,0.,90.,VMX)
      CALL HBOOK1 (508,'4Jets: Ang(Lund-Yclus);Jet 4',100,0.,90.,VMX)

      RETURN
      END
CDECK  ID>, PXSHAP.
      SUBROUTINE PXSHAP (ECM,NTRAK,MXTRK,ITKDM,PTRAK,CHAR)
*.*********************************************************
*. ------
*. PXSHAP
*. ------
*. Example analysis routine for event shape distributions.
*. Usage     :
*.
*.      INTEGER  ITKDM,MXTRK
*.      PARAMETER  (ITKDM=10.or.more,MXTRK=1.or.more)
*.      INTEGER  NTRAK
*.      REAL  PTRAK (ITKDM,MXTRK)
*.      REAL  ECM
*.
*.      NTRAK = 1.to.MXTRAK
*.      CALL PXSHAP (ECM,NTRAK,MXTRK,ITKDM,PTRAK,CHAR)
*.
*. INPUT     : ECM      Event center-of-mass
*. INPUT     : NTRAK    Number of particles
*. INPUT     : MXTRK    Maximum number of particles allowed
*. INPUT     : ITKDM    First dimension of PTRAK (>=10)
*. INPUT     : PTRAK    The particle 5-momentum (plus other things ?)
*.                      minimum = (Px,Py,Pz,E,M,...,Charge)
*. INPUT     : CHAR     Character control = 'F' for termination stage
*.                                          (normalize EEC,EECA etc.)
*.                                        = ' ' otherwise
*.
*. Note:
*. This routine requires that ITKDM, the first dimension of the
*. track array PTRAK, be at least 10.  The first four elements
*. of each track vector I should contain the 4-momenta of the track
*. and the tenth element should contain the charge of the track,
*. i.e. for each track I:
*.
*.   PTRAK (1,I) = Px
*.   PTRAK (2,I) = Py
*.   PTRAK (3,I) = Pz
*.   PTRAK (4,I) = E
*.   PTRAK (5,I) = anything
*.   PTRAK (6,I) = anything
*.   PTRAK (7,I) = anything
*.   PTRAK (8,I) = anything
*.   PTRAK (9,I) = anything
*.   PTRAK (10,I) = charge = (+1,-1,0)
*.     .
*.     .
*.     .
*.   PTRAK (ITKDM,I) = anything
*.
*. PX CALLS    : PXJSP3,PXPAX3,PXHEM4,PXMAS4,PXLTH4,
*.               PXJTR4,PXPRNT,PXSUMV,PXPRIV,PXPRO3,
*.               PXANG3,PXPLT3,PXMAGV,PXRAP4,PXEEC4,
*.               PXAKO4,PXPRRV
*. Other CALLS : HF1,HFILL,HBOOK1,HBARX,HPAK,HPAKE
*.
*. CALLED    : User routine
*.
*. AUTHOR    :  J.W.Gary
*. CREATED   :  16-Nov-88
*. LAST MOD  :  27-Nov-95
*.
*. Modification Log.
*. 01-Jul-91  J.W.Gary change to PXJTR4 for Jetfinding
*.
*. 27-Nov-95  D. Chrisman All PXPRNT statements are now call with the
*.                        correct number of arguements.
*. 12-May-97 D. Chrisman, remove declaration of unused variable MINTR
*.             and comment out declaration of variables VPERP and VPARL.
*.
*.*********************************************************
      IMPLICIT NONE
      INTEGER  IMUL,ISPH,IAPL,IQ21,IQ32,IPTI,IPTO,ITHR
      PARAMETER  (IMUL=1000,ISPH=1010,IAPL=1011,IQ21=1012)
      PARAMETER  (IQ32=1013,IPTI=1025,IPTO=1030,ITHR=1035)
      INTEGER  ITMI,IOBL,IMSF,IMSB,IDMS,INJT,ICHM
      PARAMETER  (ITMI=1036,IOBL=1037,IMSF=1070,IMSB=1071)
      PARAMETER  (IDMS=1072,INJT=1090,ICHM=1001)
      INTEGER  IPT1,IPT2,IPII,IPOI,IXPP,IRAP,IPFL,IEFL
      PARAMETER  (IPT1=1045,IPT2=1046,IPII=1050,IPOI=1055)
      PARAMETER  (IXPP=1060,IRAP=1080,IPFL=1085,IEFL=1086)
      INTEGER  IEEC,IECA,IAKO,IFWM
      PARAMETER  (IEEC=1095,IECA=1096,IAKO=1005,IFWM=1015)
      INTEGER  MXITK,MXJET,MXTKJT,NBEEC
      REAL VMX,PIPX
      PARAMETER  (VMX=0.,PIPX=3.14159)
      PARAMETER  (MXITK=200,MXJET=10,MXTKJT=150,NBEEC=50)
      INTEGER  NFOXM
      REAL  ROOT3,RADDEG
      PARAMETER  (ROOT3=1.73205,RADDEG=57.2958,NFOXM=5)
      INTEGER  IND (MXTKJT),ITR (MXJET),IHMUL (2),IPHEM (MXITK)
      INTEGER  NTRAK,IP,IERR,ITKDM,NJET,ISUM,IFOR,
     +         IBCK,IH,ITAG,NCHGD,MXTRK,NTPER
      REAL  PTRAK (ITKDM,*),PJET (5,MXJET),TVAL (3),TVEC (3,3),
     +      SVEC (3,3),SVAL (3),PHEM (5,2),
     +      EEC (NBEEC),EECER (NBEEC),EECA (NBEEC/2),EECAER (NBEEC/2),
     +      AKOVEC (3),FWNOR (NFOXM)
Comment REAL VPARL (3),VPERP (3)
      REAL  EVISIB,YCUT,APTIN,APTOUT,ECM,EBEAM,SPHCTY,APLITY,AKOPL,
     +      RAPDTY,XDUM,PTOT,OBLATE,XMASF,XMASB,SMAND,COST,THET,FWZER
      CHARACTER*1  CHAR
      LOGICAL LPRINT
      DATA  LPRINT / .FALSE. /,NTPER / 80 /

      IF (NTRAK.GT.MXITK.OR.NTRAK.LE.1) THEN
          WRITE (6,FMT='('' PXSHAP: Error, MXITK =('',I10,
     +      ''); NTRAK =('',I10,'') Skip event'')') MXITK,NTRAK
          GO TO 990
      END IF
      IF (CHAR.EQ.'F') GO TO 995
* (1) multiplicity
*     ------------
      CALL HF1 (IMUL,FLOAT (NTRAK),1.)
*  calculate Sphericity eigenvectors
*  --------- ---------- ------------
      CALL PXJSP3 (NTRAK,ITKDM,PTRAK,SVAL,SVEC,IERR)
      IF (IERR.NE.0) THEN
          WRITE (6,FMT='('' PXSHAP: PXJSP3 IERR ='',I6,
     +           ''  Skip event'')') IERR
          GO TO 990
      END IF
* (2) functions of sphericity eigenvalues
*     --------- -- ---------- -----------
      SPHCTY = 1.5 * (SVAL (1) + SVAL (2))
      APLITY = 1.5 * SVAL (1)
      CALL HF1 (ISPH,SPHCTY,1.)
      CALL HF1 (IAPL,APLITY,1.)
      CALL HF1 (IQ21,(SVAL (2) - SVAL (1)),1.)
      CALL HF1 (IQ32,(SVAL (3) - SVAL (2))/ROOT3,1.)
* (3) average transverse momentum in and out of event plane
*     ------- ---------- -------- -- --- --- -- ----- -----
      CALL PXPAX3 (NTRAK,ITKDM,PTRAK,SVEC (1,2),APTIN,'A')
      CALL PXPAX3 (NTRAK,ITKDM,PTRAK,SVEC (1,1),APTOUT,'A')
      CALL HF1 (IPTI,(APTIN / FLOAT (NTRAK)),1.)
      CALL HF1 (IPTO,(APTOUT / FLOAT (NTRAK)),1.)
*  Divide event into hemispheres, find total 4-momentum in each
*  ------ ----- ---- -----------  ---- ----- ---------- -- ----
      CALL PXHEM4 (NTRAK,ITKDM,PTRAK,SVEC (1,3),PHEM,IPHEM,IHMUL)
      DO  110  IH = 1,2
          CALL PXMAS4 (PHEM (1,IH),PHEM (5,IH))
 110  CONTINUE
      IF (PHEM (5,1).GT.PHEM (5,2)) THEN
          IFOR = 1
          IBCK = 2
      ELSE
          IFOR = 2
          IBCK = 1
      END IF
* (4) jet masses etc.
*     --- ------ ---
      XMASF = PHEM (5,IFOR)**2
      XMASB = PHEM (5,IBCK)**2
      SMAND = ECM**2
      CALL HF1 (IMSF,XMASF/SMAND,1.)
      CALL HF1 (IMSB,XMASB/SMAND,1.)
      CALL HF1 (IDMS,(XMASF-XMASB)/SMAND,1.)
*  Calculate thrust axes
*  --------- ------ ----
      CALL PXLTH4 (NTRAK,ITKDM,PTRAK,TVAL,TVEC,IERR)
      IF (IERR.NE.0) THEN
          WRITE (6,FMT='('' PXSHAP: PXLTH4 IERR ='',I6,
     +           ''  Skip event'')') IERR
          GO TO 990
      END IF
* (5) functions of thrust values
*     --------- -- ------ ------
      CALL HF1 (ITHR,TVAL (3),1.)
      CALL HF1 (ITMI,TVAL (1),1.)
      OBLATE = TVAL (2) - TVAL (1)
      IF (OBLATE.GT.(0.39)) OBLATE = 0.39
      CALL HF1 (IOBL,OBLATE,1.)
* (6) jet-finding
*     --- -------
      YCUT = 0.03
      CALL PXJTR4 ('P0',NTRAK,ITKDM,PTRAK,YCUT,MXJET,
     +             NJET,PJET,IND,ITR,IERR)
      CALL HF1 (INJT,FLOAT (NJET),1.)
      IF (IERR.NE.0) THEN
          WRITE (6,FMT='('' PXSHAP: PXJTR4 IERR ='',I6,
     +           ''  Skip event'')') IERR
          GO TO 990
      END IF
* (7) Energy-Energy correlations
*     ------ ------ ------------
      EVISIB = PHEM (4,1) + PHEM (4,2)
      CALL PXEEC4 (NTRAK,ITKDM,PTRAK,EVISIB,NBEEC,
     +             EEC,EECER,EECA,EECAER,' ',IERR)
* (8) Acoplanarity
*     ------------
      CALL PXAKO4 (NTRAK,ITKDM,MXTRK,PTRAK,NTPER,
     +             AKOPL,AKOVEC,IERR)
      IF (IERR.EQ.0) CALL HF1 (IAKO,AKOPL,1.)
* (9) Fox-Wolfram moments
*     ----------- -------
      CALL PXFOX4 (NFOXM,NTRAK,ITKDM,PTRAK,FWZER,FWNOR,IERR)
      DO 160 IP = 1,NFOXM
          CALL HF1 ((IFWM-1)+IP,FWNOR (IP),1.)
 160  CONTINUE
      IF (LPRINT) THEN
          WRITE (6,FMT='('' NTRAK ='',I10)') NTRAK
          WRITE (6,FMT='(/'' Sphericity'')')
          CALL PXPRNT (1,NTRAK,4,10,PTRAK,'E')
          CALL PXPRNT (1,3,3,3,SVEC,'E')
          CALL PXPRNT (1,1,3,3,SVAL,'E')
          WRITE (6,FMT='(/'' Thrust'')')
          CALL PXPRNT (1,3,3,3,TVEC,'E')
          CALL PXPRNT (1,1,3,3,TVAL,'E')
          WRITE (6,FMT='(/'' YCLUS jetfinder'')')
          CALL PXPRNT (1,NJET,5,5,PJET,'E')
          CALL PXPRNT (1,1,MXJET,NJET,ITR,'I')
          CALL PXSUMV (NJET,ITR,ISUM)
          CALL PXPRIV ('IND',ISUM,IND)
          CALL PXPRRV ('AKOPL',1,AKOPL)
          CALL PXPRRV ('AKOVEC',3,AKOVEC)
          CALL PXPRRV ('FWZER',1,FWZER)
          CALL PXPRRV ('FWNOR',NFOXM,FWNOR)
      END IF
* per-particle distributions
* --- -------- -------------
      EBEAM = ECM / 2.
      NCHGD = 0
      DO 180 IP = 1,NTRAK
*       (1) total energy flow w.r.t sphericity axis
*           ----- ------ ---- - - - ---------- ----
*          (a) This version for projection into event plane
Comment          CALL PXPRO3 (SVEC (1,1),PTRAK (1,IP),VPARL,VPERP)
Comment          CALL PXANG3 (SVEC (1,3),VPERP,COST,THET,IERR)
*          (b) This version for no projection
          CALL PXANG3 (SVEC (1,3),PTRAK (1,IP),COST,THET,IERR)
          IF (IERR.NE.0) THEN
              WRITE (6,FMT='('' PXSHAP: PXANG3, IERR ='',I6,
     +               ''  Skip particle'')') IERR
              GO TO 180
          END IF
          THET = THET * RADDEG
          IF (THET.GT.90) THET = 180. - THET
          CALL HFILL (IEFL,THET,0.,PTRAK (4,IP))
*       possible track selection (e.g. for charged tracks)
*       -------- ----- ---------  - -  --- ------- ------
          IF (ITKDM.GE.10) THEN
              ITAG = PTRAK (10,IP)
              IF (ITAG.EQ.0) GO TO 180
              NCHGD = NCHGD + 1
          END IF
*       (2) charged particle flow w.r.t sphericity axis
          CALL HF1 (IPFL,THET,1.)
*       (3) particle momentum normal to main sphericity axis
*           -------- -------- ------ -- ---- ---------- ----
          CALL PXPLT3 (PTRAK (1,IP),SVEC (1,3),XDUM,APTOUT,IERR)
          IF (IERR.NE.0) THEN
              WRITE (6,FMT='('' PXSHAP: PXPLT3(3), IERR ='',I6,
     +               ''  Skip particle'')') IERR
              GO TO 180
          END IF
          IF (APTOUT.LE.10) THEN
              IF (APTOUT.GT.(2.45)) APTOUT = 2.45
              CALL HF1 (IPT1,ABS (APTOUT),1.)
          END IF
          APTOUT = APTOUT**2
          IF (APTOUT.LE.40) THEN
              IF (APTOUT.GT.(2.45)) APTOUT = 2.45
              CALL HF1 (IPT2,ABS (APTOUT),1.)
          END IF
*       (4) particle momentum in event plane, normal to main axis
*           -------- -------- -- ----- -----  ------ -- ---- ----
          CALL PXPLT3 (PTRAK (1,IP),SVEC (1,2),APTIN,XDUM,IERR)
          IF (IERR.NE.0) THEN
              WRITE (6,FMT='('' PXSHAP: PXPLT3(2), IERR ='',I6,
     +               ''  Skip particle'')') IERR
              GO TO 180
          END IF
          IF (APTIN.LE.10) THEN
              IF (APTIN.GT.(2.45)) APTIN = 2.45
              CALL HF1 (IPII,ABS (APTIN),1.)
          END IF
*       (5) particle momentum out of event plane
*           -------- -------- --- -- ----- -----
          CALL PXPLT3 (PTRAK (1,IP),SVEC (1,1),APTOUT,XDUM,IERR)
          IF (IERR.NE.0) THEN
              WRITE (6,FMT='('' PXSHAP: PXPLT3(1), IERR ='',I6,
     +               ''  Skip particle'')') IERR
              GO TO 180
          END IF
          CALL HF1 (IPOI,ABS (APTOUT),1.)
*       (6) scaled particle momentum ("Xp")
*           ------ -------- --------   --
          CALL PXMAGV (3,PTRAK (1,IP),PTOT)
          CALL HF1 (IXPP,(PTOT / EBEAM),1.)
*       (7) rapidity (w.r.t thrust axis)
*           --------  - - - ------ ----
          CALL PXRAP4 (PTRAK (1,IP),TVEC (1,3),RAPDTY,IERR)
          IF (IERR.NE.0) THEN
              WRITE (6,FMT='('' PXSHAP: PXRAP4, IERR ='',I6,
     +               ''  Skip particle'')') IERR
              GO TO 180
          END IF
          CALL HF1 (IRAP,ABS (RAPDTY),1.)
 180  CONTINUE
      CALL HF1 (ICHM,FLOAT (NCHGD),1.)
 990  RETURN
*  termination for this routine
*  ----------- --- ---- -------
 995  CALL PXEEC4 (NTRAK,ITKDM,PTRAK,EVISIB,NBEEC,
     +             EEC,EECER,EECA,EECAER,'N',IERR)
      CALL HPAK (IEEC,EEC)
      CALL HPAKE (IEEC,EECER)
      CALL HPAK (IECA,EECA)
      CALL HPAKE (IECA,EECAER)
      IF (LPRINT) THEN
          CALL PXPRRV ('EEC',NBEEC,EEC)
          CALL PXPRRV ('EECER',NBEEC,EECER)
          CALL PXPRRV ('EECA',(NBEEC/2),EECA)
          CALL PXPRRV ('EECAER',(NBEEC/2),EECAER)
      END IF
      RETURN
*  histogram booking for this routine
*  --------- ------- --- ---- -------
      ENTRY PXSHBK

      CALL HBOOK1 (IMUL,'Multiplicity',100,0.,100.,VMX)
      CALL HBOOK1 (ICHM,'Charged Multiplicity',100,0.,100.,VMX)
      CALL HBOOK1 (ISPH,'Sphericity',40,0.,0.80,VMX)
      CALL HBOOK1 (IAPL,'Aplanarity',24,0.,0.24,VMX)
      CALL HBOOK1 (IQ21,'Q2-Q1',23,0.,0.46,VMX)
      CALL HBOOK1 (IQ32,'(Q3-Q2)/sqrt(3.)',29,0.,0.58,VMX)
      CALL HBOOK1 (IPTI,'<PTin>',24,0.,1.2,VMX)
      CALL HBOOK1 (IPTO,'<PTout>',12,0.,0.6,VMX)
      CALL HBOOK1 (ITHR,'Thrust',22,0.56,1.00,VMX)
      CALL HBOOK1 (ITMI,'Thrust Minor',20,0.,0.40,VMX)
      CALL HBOOK1 (IOBL,'Oblateness',20,0.,0.40,VMX)
      CALL HBOOK1 (IPT1,'(PT)sph.axis',25,0.,2.5,VMX)
      CALL HBOOK1 (IPT2,'(PT**2)sph.axis',25,0.,2.5,VMX)
      CALL HBOOK1 (IPII,'(PTin)i',25,0.,2.5,VMX)
      CALL HBOOK1 (IPOI,'(PTout)i',16,0.,1.6,VMX)
      CALL HBOOK1 (IXPP,'(P)i/Ebeam',20,0.,1.00,VMX)
      CALL HBOOK1 (IMSF,'(Mass-F/Ecm)**2',34,0.,0.34,VMX)
      CALL HBOOK1 (IMSB,'(Mass-B/Ecm)**2',16,0.,0.16,VMX)
      CALL HBOOK1 (IDMS,'(delta-Mass**2)/Ecm**2',34,0.,0.34,VMX)
      CALL HBOOK1 (IRAP,'abs (Rapidity)',20,0.,5.00,VMX)
      CALL HBOOK1 (IPFL,'Particle Flow',18,0.,90.,VMX)
      CALL HBOOK1 (IEFL,'Energy Flow',18,0.,90.,VMX)
      CALL HBARX  (IEFL)
      CALL HBOOK1 (INJT,'Nr.Jets',9,1.,10.,VMX)
      CALL HBOOK1 (IEEC,'Energy-Energy Correlation',NBEEC,0.,PIPX,0.)
      CALL HBOOK1 (IECA,'EECA',(NBEEC/2),0.,(PIPX/2.),0.)
      CALL HBOOK1 (IAKO,'Acoplanarity',25,0.,0.5,0.)
      CALL HBOOK1 (IFWM,'Fox-Wolfram moment 1',20,0.,1.,0.)
      CALL HBOOK1 (IFWM+1,'Fox-Wolfram moment 2',20,0.,1.,0.)
      CALL HBOOK1 (IFWM+2,'Fox-Wolfram moment 3',20,0.,1.,0.)
      CALL HBOOK1 (IFWM+3,'Fox-Wolfram moment 4',20,0.,1.,0.)
      CALL HBOOK1 (IFWM+4,'Fox-Wolfram moment 5',20,0.,1.,0.)

      RETURN
      END
