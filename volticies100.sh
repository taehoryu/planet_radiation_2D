#!/bin/bash
#PBS -l nodes=8:ppn=28,walltime=24:00:00
#PBS -N L_T3000_Ri01
#PBS -q long

#module load shared
#module load  mpiexec/0.84_432
#module load gcc/5.1.0
#module load anaconda/2
#module load openmpi/open64/64/1.8.5
# module load mvapich2/mlnx/gcc/64/2.0

#activate my_env
module load shared
#module load  mpiexec/0.84_432                                                                                       
module load gcc/6.1.0
module load anaconda/2
#module load openmpi/open64/64/1.8.5                                                                                 
# module load mvapich2/mlnx/gcc/64/2.0                                                                               
module load mvapich2/gcc/64/2.2rc1

module load maui/3.3.1


cd /gpfs/scratch/taryu/project7_HJ/Castro/Exec/science/L_T3000_1024_Ri01/
#make realclean
#make clean
#make -j12
mpiexec -n 224 ./Castro3d.gnu.MPI.ex inputs_3d   1>stdout.txt 2>stderr.txt

echo End Job
