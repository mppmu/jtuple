      subroutine jtfnsh
      implicit none

#include "jtffr.inc"
#include "jtstat.inc"

      print *, 'JTFNSH: finish this job'

C     Print out some statistics:
      print *, 'JTFNSH: track cut statistics'
      print *, 'Tracks rejected by Nhit r-phi:', nrejrp
      print *, 'Tracks rejected by Nhit r-z:', nrejrz
      print *, 'Tracks rejected by abs(zvert):', nrejzv
      print *, 'Tracks rejected by abs(rmin):', nrejrm
      print *, 'Tracks rejected by p_tot:', nrejp
      print *, 'JTFNSH: event statistics'
      print *, 'Total processed events: ', nevtot
      print *, 'Selected events: ', nevacc
      print *, 'Non-rad events: ', nnonr
      print *, 'Selected non-rad: ', ndnonr

C     Close files:
      if( lbankw ) close( iobank )

      return
      end
