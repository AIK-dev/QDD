* diag-f.h
* global declarations for the Diag routines
* this file is part of Diag
* last modified 9 Aug 11 th


#ifdef QUAD
#define Real real*16
#define Complex complex*32
#define Re QEXT
#define Conjugate QCONJG
#else
#define Real double precision
#define Complex double complex
#define Re DBLE
#define Conjugate DCONJG
#endif


* The maximum dimension of a matrix, needed for allocating internal
* memory, i.e. the routines handle at most MAXDIM-by-MAXDIM matrices.

#define MAXDIM 100


* A matrix is considered diagonal if the sum of the squares
* of the off-diagonal elements is less than EPS.  SYM_EPS is
* half of EPS since only the upper triangle is counted for
* symmetric matrices.
* 52 bits is the mantissa length for IEEE double precision.

#define EPS 2D0**(-102)

#define SYM_EPS 2D0**(-103)

#define DBL_EPS 2D0**(-52)
* HEigensystem.F
* diagonalization of a Hermitian n-by-n matrix using the Jacobi algorithm
* code adapted from the "Handbook" routines for complex A
* (Wilkinson, Reinsch: Handbook for Automatic Computation, p. 202)
* this file is part of the Diag library
* last modified 9 Aug 11 th

*#include "diag-f.h"


************************************************************************
** HEigensystem diagonalizes a Hermitian n-by-n matrix.
** Input: n, A = n-by-n matrix, Hermitian
** (only the upper triangle of A needs to be filled).
** Output: d = vector of eigenvalues, U = transformation matrix
** these fulfill diag(d) = U A U^+ = U A U^-1 with U unitary.

	subroutine HEigensystem(n, A,ldA, d, U,ldU, sort)
	implicit none
	integer n, ldA, ldU, sort
	Complex A(ldA,*), U(ldU,*)
	Real d(*)

	integer p, q, j
	Real red, off, thresh
	Real t, delta, invc, s
	Complex x, y, Apq
	Real ev(2,MAXDIM)

	integer sweep
	common /nsweeps/ sweep

	Real Sq
	Complex c
	Sq(c) = Re(c*Conjugate(c))

	if( n .gt. MAXDIM ) then
	  STOP  "HEeigesystem: Dimension too large, enhance MAXDIM"
	  d(1) = -999
	  return
	endif

	do p = 1, n
	  ev(1,p) = 0
	  ev(2,p) = Re(A(p,p))
	  d(p) = ev(2,p)
	enddo

	do p = 1, n
	  do q = 1, n
	    U(q,p) = 0
	  enddo
	  U(p,p) = 1
	enddo

	red = .04D0/n**4

	do sweep = 1, 50
	  off = 0
	  do q = 2, n
	    do p = 1, q - 1
	      off = off + Sq(A(p,q))
	    enddo
	  enddo
	  if( .not. off .gt. SYM_EPS ) goto 1

	  thresh = 0
	  if( sweep .lt. 4 ) thresh = off*red

	  do q = 2, n
	    do p = 1, q - 1
	      Apq = A(p,q)
	      off = Sq(Apq)
	      if( sweep .gt. 4 .and. off .lt.
     &              SYM_EPS*(ev(2,p)**2 + ev(2,q)**2) ) then
	        A(p,q) = 0
	      else if( off .gt. thresh ) then
	        t = .5D0*(ev(2,p) - ev(2,q))
	        t = 1/(t + sign(sqrt(t**2 + off), t))

	        delta = t*off
	        ev(1,p) = ev(1,p) + delta
	        ev(2,p) = d(p) + ev(1,p)
	        ev(1,q) = ev(1,q) - delta
	        ev(2,q) = d(q) + ev(1,q)

	        invc = sqrt(delta*t + 1)
	        s = t/invc
	        t = delta/(invc + 1)

	        do j = 1, p - 1
	          x = A(j,p)
	          y = A(j,q)
	          A(j,p) = x + s*(Conjugate(Apq)*y - t*x)
	          A(j,q) = y - s*(Apq*x + t*y)
	        enddo

	        do j = p + 1, q - 1
	          x = A(p,j)
	          y = A(j,q)
	          A(p,j) = x + s*(Apq*Conjugate(y) - t*x)
	          A(j,q) = y - s*(Apq*Conjugate(x) + t*y)
	        enddo

	        do j = q + 1, n
	          x = A(p,j)
	          y = A(q,j)
	          A(p,j) = x + s*(Apq*y - t*x)
	          A(q,j) = y - s*(Conjugate(Apq)*x + t*y)
	        enddo

	        A(p,q) = 0

	        do j = 1, n
	          x = U(p,j)
	          y = U(q,j)
	          U(p,j) = x + s*(Apq*y - t*x)
	          U(q,j) = y - s*(Conjugate(Apq)*x + t*y)
	        enddo
	      endif
	    enddo
	  enddo

	  do p = 1, n
	    ev(1,p) = 0
	    d(p) = ev(2,p)
	  enddo
	enddo

	print *, "Bad convergence in HEigensystem"

1	if( sort .eq. 0 ) return

* sort the eigenvalues

	do p = 1, n - 1
	  j = p
	  t = d(p)
	  do q = p + 1, n
	    if( sort*(t - d(q)) .gt. 0 ) then
	      j = q
	      t = d(q)
	    endif
	  enddo

	  if( j .ne. p ) then
	    d(j) = d(p)
	    d(p) = t
	    do q = 1, n
	      x = U(p,q)
	      U(p,q) = U(j,q)
	      U(j,q) = x
	    enddo
	  endif
	enddo
	end
 
