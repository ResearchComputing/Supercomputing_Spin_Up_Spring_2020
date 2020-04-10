#!/bin/bash
#SBATCH --nodes=1			# Number of requested nodes
#SBATCH --ntasks=1			# Number of requested cores
#SBATCH --time=0:02:00			# Max walltime
#SBATCH --partition=shas-testing	# Specify Summit haswell nodes
#SBATCH --output=matlab_%j.out		# Rename standard output file
#SBATCH --reservation=tutorial1		# Reservation (only valid during workshop)


# Written by:	Shelley Knuth, 24 February 2014
# Updated by:   Andrew Monaghan, 08 March 2018
# Updated by:   Kim Kanigel Winner, 23 June 2018
# Updated by:   Shelley Knuth, 17 May 2019
# Purpose: 	This script is for the Matlab tutorial.  Its purpose is 
#		to demonstrate how to submit a serial Matlab 

# purge all existing modules
module purge

# Load Matlab module
module load matlab

# Run matlab without a GUI
cd progs
matlab -nodisplay -nodesktop -r "matlab_tic;"

