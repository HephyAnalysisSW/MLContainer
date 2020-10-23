#! /bin/sh -x

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

if [ $(hostname) = "hepgpu01.hephy.oeaw.ac.at" ]
then
   images="/local/HephyML/singularity/images"
elif [ $(hostname -d) = "vbc.ac.at" ]
then
   images="/mnt/hephy/HephyML/singularity/images"
else
   echo "Unknown host"
   exit 1
fi

singularity $cmd $sopts $images/deepjetcore3-latest.sif
