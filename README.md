# Supporting Information 

This repository contains the input files and geometries for the three codes benchmarked. 

 - The xyz directory contains the plain xyz files used for the calculations. 
 - The terachem directory contains the same xyz files and the start.sp input file used in Terachem. 
 - The quick directory contains the QUICK input files used for the execution of the program. 
 - The json directory contains the input files used for our code in json format 

## Terachem details

The version of Terachem used for the calculations was kindly provided by professor Todd Martinez. A preview version of Terachem with V100 Ubuntu support had to be provided for the correct execution of the program in our local DGX cluster described in the paper. 

In order to reproduce all the calculations described in the paper, a user would need to grab the start.sp file and change the input geometry, the basis set, and the number of GPUs. 

## QUICK details 

QUICK was obtained from their GitHub page using the master branch. The latest commit from the git log is from Feb 5 and the commit is: dd154a4263ece80e193f07e114671f5d90f3d0f7

For reproducing the calculations, a user would need to change the basis set to 6-31G and 6-31G* and vary the number of GPUs used. 

