
! DO NOT EDIT THIS FILE!!!  
!  
! This file is automatically generated by write_network.py at 
! compile-time.  
!  
! To modify the species carried by the network, edit the appropriate inputs 
! file.

! An automatically generated "null" network.  This provides the properties
! of a set of non-reacting species.
!
! nspec            -- the number of species
! naux             -- the number of auxiliary variables
!
! aion             -- atomic number
! zion             -- proton number
!
! spec_names       -- the name of the isotope
! short_spec_names -- an abbreviated form of the species name
!
! aux_names        -- the name of the auxiliary variable
! short_aux_names  -- an abbreviated form of the auxiliary variable


module actual_network

  use bl_types

  implicit none

  integer, parameter :: nspec = 2
  integer, parameter :: nspec_evolve = 2
  integer, parameter :: naux =  0

  character (len=16), save :: spec_names(nspec)
  character (len= 5), save :: short_spec_names(nspec)
  character (len=16), save :: aux_names(naux)
  character (len= 5), save :: short_aux_names(naux)

  double precision, save   :: aion(nspec), zion(nspec)

  integer, parameter :: nrates = 1
  integer, parameter :: num_rate_groups = 1

contains

  subroutine actual_network_init

    spec_names(1) = "X"
    spec_names(2) = "Y"

    short_spec_names(1) = "X"
    short_spec_names(2) = "Y"

    aion(1) = 2.34
    aion(2) = 2.34

    zion(1) = 1.17
    zion(2) = 1.17


  end subroutine actual_network_init

  subroutine actual_network_finalize

    implicit none

    ! Nothing to do here.

  end subroutine actual_network_finalize


end module actual_network
