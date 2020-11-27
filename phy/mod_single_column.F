! ------------------------------------------------------------------------------
! Copyright (C) 2020 Mehmet Ilicak, Mats Bentsen
! 
! This file is part of BLOM.
! 
! BLOM is free software: you can redistribute it and/or modify it under the
! terms of the GNU Lesser General Public License as published by the Free
! Software Foundation, either version 3 of the License, or (at your option)
! any later version.
! 
! BLOM is distributed in the hope that it will be useful, but WITHOUT ANY
! WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
! FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for
! more details.
! 
! You should have received a copy of the GNU Lesser General Public License
! along with BLOM. If not, see <https://www.gnu.org/licenses/>.
! ------------------------------------------------------------------------------

      module mod_single_column
c
c --- ------------------------------------------------------------------
c --- This module contains routines for generating surface fluxes
c --- from NCEP or ERA40 reanalysis following Bentsen and Drange (2002).
c --- ------------------------------------------------------------------
c
      use mod_xc
      use dimensions
c      use mod_ben02func
c      use mod_bulktf
c
      implicit none
c
c      private
c
      public :: getfrc_single_column, geoenv_single_column
      public :: thermf_single_column
c
      contains
c
c
c
c
      subroutine getfrc_single_column
c
      implicit none
#include "common_blocks.h"
#include "common_forc.h"

      swa=0.    ! shortwave                                     
      nsf=0.    ! non-solar                                     
      hmltfz=0. ! heat flux due to melting/freezing             
      hmlt=0.   ! heat flux due to melting                      
      dfl=0.    ! derivate of non-solar in respect to T         
      alb=0. ! albedo                                           
      eva=0. ! evaporation                                      
      lip=0. ! liquid precip                                    
      sop=0. ! solid precip                                     
      rnf=0.       ! runoff                                     
      rfi=0.       ! runoff ice                                 
      fmltfz=0.    ! fresh water flux due to melting/freezing   
      sfl=0.       ! salt flux                                  
      ustarw=0.005 ! friction velocity for open water           
      slp=1000.    ! sea level pressure                         
      abswnd=0.    ! wind speed at measurement height -zu-      
      albw=0.      ! daily mean open water albedo               
      frzpot=0.    ! freezing potential                         
      mltpot=0.    ! melting potential                          
      atmco2=400.  ! atmospheric co2 concentration              
      flxco2=0.    ! air-sea co2 flux                           
      flxdms=0.    ! sea-air dms flux                           
      ztx=0.       ! taux
      mty=0.       ! tauy


      return
      end subroutine getfrc_single_column
c
c --- ------------------------------------------------------------------
c

      subroutine thermf_single_column(m,n,mm,nn,k1m,k1n)
c
c --- NERSC version of thermf. Set them to zero for single column case
c
      implicit none
c
      integer m,n,mm,nn,k1m,k1n
c
#include "common_blocks.h"
#include "common_forc.h"
c
      integer i,j,k,l
#ifdef TRC
#  include "param_trc.h"
#  include "common_trc.h"
      integer nt
#endif
c
c$OMP PARALLEL DO PRIVATE(l,i
#ifdef TRC
c$OMP+ ,nt
#endif
c$OMP+ )
      do j=1,jj
        do l=1,isp(j)
        do i=max(1,ifp(j,l)),min(ii,ilp(j,l))
c
          rnfflx(i,j)=0.
          rfiflx(i,j)=0.
          brnflx(i,j)=0.
          frzpot(i,j)=0.
          mltpot(i,j)=0.
          hmltfz(i,j)=0.
          surflx(i,j)=0.
          sswflx(i,j)=0.
          surrlx(i,j)=0.
          salrlx(i,j)=0.
          salflx(i,j)=0.
#ifdef TRC
          do nt=1,ntr
            trflx(nt,i,j)=0.
          enddo
#endif
          ustar(i,j)=0.
        enddo
        enddo
      enddo
c$OMP END PARALLEL DO
c
      return
      end subroutine thermf_single_column
c
c --- ------------------------------------------------------------------
c
      subroutine geoenv_single_column
c
c --- ------------------------------------------------------------------
c --- Define bathymetry, grid specification and Coriolis parameter for
c --- single column case [cm s]
c --- ------------------------------------------------------------------
c
c
      implicit none
c
#include "common_blocks.h"
#include "common_geo.h"
c

c --- initialize depth to 0 everywhere     
      depths=1000.
c
      nwp=jtdm*itdm
      qlon=-165.6
      qlat=0.
      plon=-165.5
      plat=0.
      ulon=-165.6
      ulat=-0.9
      vlon=-165.5
      vlat=-1.1
      qclon=0.
      qclat=0.
      pclon=0.
      pclat=0.
      uclon=0.
      uclat=0.
      vclon=0.
      vclat=0.
      scqx=1100000.0
      scqy=1100000.0
      scpx=1100000.0
      scpy=1100000.0
      scux=1100000.0
      scuy=1100000.0
      scvx=1100000.0
      scvy=scuy
      scq2=scqx*scqy
      scp2=scpx*scpy
      scu2=scux*scuy
      scv2=scvx*scvy
      corioq=0.
      coriop=0.
      betafp=0.

      return
      end subroutine geoenv_single_column
c
c --- ------------------------------------------------------------------
c

      end module mod_single_column
