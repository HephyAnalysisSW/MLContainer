#! /bin/sh


if [ $# -le 1 ]
then
   cmd='shell'
else
   cmd='run'  
fi

singularity $cmd -B /local -B /scratch -B /data -B /afs --nv /local/HephyML/singularity/ml-hats-gpu-latest.sif $*

 
