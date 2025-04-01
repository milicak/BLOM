fs = import('fs') # import fs system module: https://mesonbuild.com/Fs-module.html
sources += files('CVMix-src/src/shared/cvmix_background.F90',
'CVMix-src/src/shared/cvmix_convection.F90', 
'CVMix-src/src/shared/cvmix_ddiff.F90',
'CVMix-src/src/shared/cvmix_kinds_and_types.F90', 
'CVMix-src/src/shared/cvmix_kpp.F90',
'CVMix-src/src/shared/cvmix_math.F90',
'CVMix-src/src/shared/cvmix_put_get.F90', 
'CVMix-src/src/shared/cvmix_shear.F90', 
'CVMix-src/src/shared/cvmix_tidal.F90', 
'CVMix-src/src/shared/cvmix_utils.F90')

if get_option('ecosys')
   sources += files('M4AGO-sinking-scheme/src/mo_m4ago_core.f90',
                    'M4AGO-sinking-scheme/src/mo_m4ago_physics.f90',
       		    'M4AGO-sinking-scheme/src/mo_ihamocc4m4ago.f90')
   if fs.exists('M4AGO-sinking-scheme/src/mo_m4ago_kind.F90')
     sources += files('M4AGO-sinking-scheme/src/mo_m4ago_kind.F90')
   endif
   if fs.exists('M4AGO-sinking-scheme/src/mo_m4ago_control.f90')
     sources += files('M4AGO-sinking-scheme/src/mo_m4ago_control.f90')
   endif
   if fs.exists('M4AGO-sinking-scheme/src/mo_m4ago_params.f90')
     sources += files('M4AGO-sinking-scheme/src/mo_m4ago_params.f90')
   endif
   if fs.exists('M4AGO-sinking-scheme/src/mo_m4ago_types.f90')
     sources += files('M4AGO-sinking-scheme/src/mo_m4ago_types.f90')
   endif
   if fs.exists('M4AGO-sinking-scheme/src/mo_m4ago_HAMOCCinit.F90')
     sources += files('M4AGO-sinking-scheme/src/mo_m4ago_HAMOCCinit.F90')
   endif
   if fs.exists('M4AGO-sinking-scheme/src/mo_m4ago_HAMOCCPrimPart.F90')
     sources += files('M4AGO-sinking-scheme/src/mo_m4ago_HAMOCCPrimPart.F90')
   endif
endif

sources += files('GOTM/extern/flexout/extern/fortran-yaml/yaml.F90',
'GOTM/extern/flexout/extern/fortran-yaml/yaml_settings.F90',
'GOTM/extern/flexout/extern/fortran-yaml/yaml_types.F90')

sources += files('GOTM/src/turbulence/algebraiclength.F90',
'GOTM/src/turbulence/alpha_mnb.F90',
'GOTM/src/turbulence/cmue_a.F90',
'GOTM/src/turbulence/cmue_b.F90',
'GOTM/src/turbulence/cmue_c.F90',
'GOTM/src/turbulence/cmue_d.F90',
'GOTM/src/turbulence/cmue_ma.F90',
'GOTM/src/turbulence/cmue_rf.F90',
'GOTM/src/turbulence/cmue_sg.F90',
'GOTM/src/turbulence/compute_cpsi3.F90',
'GOTM/src/turbulence/compute_rist.F90',
'GOTM/src/turbulence/dissipationeq.F90',
'GOTM/src/turbulence/epsbalgebraic.F90',
'GOTM/src/turbulence/fk_craig.F90',
'GOTM/src/turbulence/genericeq.F90',
'GOTM/src/turbulence/gotm_lib_version.F90',
'GOTM/src/turbulence/internal_wave.F90',
'GOTM/src/turbulence/ispralength.F90',
'GOTM/src/turbulence/kbalgebraic.F90',
'GOTM/src/turbulence/kbeq.F90',
'GOTM/src/turbulence/kpp.F90',
'GOTM/src/turbulence/lengthscaleeq.F90',
'GOTM/src/turbulence/potentialml.F90',
'GOTM/src/turbulence/production.F90',
'GOTM/src/turbulence/q2over2eq.F90',
'GOTM/src/turbulence/r_ratio.F90',
'GOTM/src/turbulence/tkealgebraic.F90',
'GOTM/src/turbulence/tkeeq.F90',
'GOTM/src/turbulence/turbulence.F90',
'GOTM/src/turbulence/variances.F90')

sources += files('GOTM/src/util/adv_center.F90',
'GOTM/src/util/compilation.F90',
'GOTM/src/util/convert_fluxes.F90',
'GOTM/src/util/diff_center.F90',
'GOTM/src/util/diff_face.F90',
'GOTM/src/util/eqstate.F90',
'GOTM/src/util/gotm_version.F90',
'GOTM/src/util/gridinterpol.F90',
'GOTM/src/util/lagrange.F90',
'GOTM/src/util/ode_solvers.F90',
'GOTM/src/util/time.F90',
'GOTM/src/util/tridiagonal.F90',
'GOTM/src/util/util.F90')

# Directories with header files that is needed when building
gotm_inc = include_directories('GOTM/include')
# List of directories to include, usually with C headers
includes += [gotm_inc]
