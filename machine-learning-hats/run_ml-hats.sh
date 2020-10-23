#! /bin/sh

# command line

if [ $# -le 1 ]
then
   cmd='shell'
else
   cmd='run'  
fi

# determine binds for singularity

sopts="--nv"
for mp in /scratch /scratch-cbe /local /data /afs
do
   if [ -e $mp ]
   then
      sopts="-B $mp $sopts"
   fi 
done

# singularity image on different installations

if [ $(hostname) = "hepgpu01" ]
then
   sif="/local/HephyML/singularity/ml-hats-gpu-latest.sif"
elif [ $(hostname -d) = "vbc.ac.at" ]
   sif="/mnt/hephy/HephyML/singularity/ml-hats-gpu-latest.sif"
else  
   echo "Unknown host"
   exit 1
fi

singularity $cmd $sopts $sif $*

 
