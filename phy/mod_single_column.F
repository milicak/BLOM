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
c      use mod_ben02func
c      use mod_bulktf
c
      implicit none
c
c      private
c
      public :: getfrc_channel, geoenv_single_column
c      public :: 
c
      contains
c
c
c
c
      subroutine getfrc_channel
c
      return
      end subroutine getfrc_channel
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
      qlon=0.
      qlat=0.
      plon=0.
      plat=0.
      ulon=0.
      ulat=0.
      vlon=0.
      vlat=0.
      qclon=0.
      qclat=0.
      pclon=0.
      pclat=0.
      uclon=0.
      uclat=0.
      vclon=0.
      vclat=0.
      scqx=1000000.0
      scqy=1000000.0
      scpx=1000000.0
      scpy=1000000.0
      scux=1000000.0
      scuy=1000000.0
      scvx=1000000.0
      scvy=scxy
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
