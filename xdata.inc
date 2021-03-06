C -*- mode: fortran -*-
C JADE event record variables
      INTEGER IXREVN,IXRUN,IXEVENT,IXMCR
      REAL XEBEAM,XEVCH,XEVTOT
      REAL XSPH1X,XSPH1Y,XSPH1Z,XSPH1
     +     ,XSPH2X,XSPH2Y,XSPH2Z,XSPH2
     +     ,XSPH3X,XSPH3Y,XSPH3Z,XSPH3
     +     ,XACOX,XACOY,XACOZ,XACO
     +     ,XTHRX,XTHRY,XTHRZ,XTHR
      INTEGER IXNVER
      REAL XVERX,XVERY,XVERZ
      INTEGER IXNPAR,IXQFL
      REAL XPPX,XPPY,XPPZ,XPP
      INTEGER IXNP,IXRPN,IXPATR,IXPC,
     +     IXVN,IXV2N,IXPALL,IXEO,IXTPTR,IXPTF
      REAL XEX,XEY,XEZ,XP,XCH,XECL,XECLE,XECLC,
     +     XDEDX,XDEDXS,XRMIN,XDX,XDY,XDZ
      INTEGER IXDFLG,IXCLN,IXCTRN,IXHITS,
     +     IXMUQ,IXLGP,IXNBL1,IXNBL2
      INTEGER IX
      PARAMETER( IX=400 )
      COMMON /XDATA/ 
C         general section
     +     IXREVN,IXRUN,IXEVENT,IXMCR
     +     ,XEBEAM,XEVCH,XEVTOT
     +     ,XSPH1X,XSPH1Y,XSPH1Z,XSPH1
     +     ,XSPH2X,XSPH2Y,XSPH2Z,XSPH2
     +     ,XSPH3X,XSPH3Y,XSPH3Z,XSPH3
     +     ,XACOX,XACOY,XACOZ,XACO
     +     ,XTHRX,XTHRY,XTHRZ,XTHR
     +     ,IXNVER
     +     ,XVERX(20),XVERY(20),XVERZ(20)
     +     ,IXNPAR,IXQFL
     +     ,XPPX(20),XPPY(20),XPPZ(20),XPP(20),IXNP
C         particle section
     +     ,IXRPN(IX),IXPATR(IX),IXPC(IX)
     +     ,IXVN(IX),IXV2N(IX),IXPALL(IX),IXEO(IX)
     +     ,IXTPTR(IX),IXPTF(IX)
     +     ,XEX(IX),XEY(IX),XEZ(IX),XP(IX),XCH(IX)
     +     ,XECL(IX),XECLE(IX),XECLC(IX)
     +     ,XDEDX(IX),XDEDXS(IX),XRMIN(IX),XDX(IX),XDY(IX),XDZ(IX)
     +     ,IXDFLG(IX),IXCLN(IX),IXCTRN(IX),IXHITS(IX)
     +     ,IXMUQ(IX),IXLGP(IX),IXNBL1(IX),IXNBL2(IX)
      INTEGER IXDATA( 28+60+2+80+1+IX*31 )
      EQUIVALENCE( IXDATA(1),IXREVN )
