*
* $Id: rrkstp.F,v 1.1.1.1 1996/04/01 15:02:16 mclareni Exp $
*
* $Log: rrkstp.F,v $
* Revision 1.1.1.1  1996/04/01 15:02:16  mclareni
* Mathlib gen
*
*
#include "gen/pilot.h"
C This will be RKSTP,IF=DOUBLE and RKSTP64,IF=-DOUBLE.
      SUBROUTINE RRKSTP(N,H,X,Y,SUB,W)
#include "rkstpcod.inc"
