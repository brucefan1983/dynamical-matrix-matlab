# dynamical-matrix-matlab
A 200-line MATLAB code for calculating the dynamical matrix using the Tersoff potential

## Features

* This is a pedagogical code for teaching some basics of harmonic lattice dynamics.
  * Forces and force contstants are calculated by using finite difference from the Tersoff empirical potential
  * The dynamical matrix at the Gamma point is constructed from the force constants and the phonon density of states (DOS) are calculated from the eigenvalues of the dynamical matrix.
  
## File organizations

* There are two scripts:
  * test_F.m
  * test_DOS.m

* The "test_F.m" script calls the "find_r", "find_neighbor", and "find_F" functions.

* The "test_DOS.m" script calls the "find_r", "find_neighbor", and "find_D" functions.

* Both the "find_F" and "find_D" functions call the "find_E" function.
  
## Unit system

* I use the following basic units:
  * Length: Angstrom
  * Mass: amu (atomic mass unit)
  * Energy: eV
  
* Other units are then derived.

## Running the examples

* Run the "test_F.m" script to test whether the force on each atom is zero. This takes a few seconds. 
  
* Run the "test_DOS" script to get a phonon DOS plot. This takes a couple of minutes. 

## Contact

* Zheyong Fan: brucenju(at)gmail.com

