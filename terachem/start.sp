# basis set
basis           sto-3g

# coordinates file
coordinates     gly60.xyz

# molecule charge
charge          0

# SCF method (rhf/blyp/b3lyp/etc...): DFT-B3LYP
method          rhf

# type of the job (energy/gradient/md/minimize/ts): single-point energy
run             energy
safemode yes
gpus 1
purify false 
dynamicgrid no
precision double
fock conventional
timings verbose
threall 1.0e-11
pqthre 1.0e-10
threex 1.0e-10
threcl 1.0e-10
convthre 3.0e-7
maxit 1
end


