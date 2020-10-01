#! /bin/sh -x

mkdir -p localcachedir cachedir tmpdir

export SINGULARITY_LOCALCACHEDIR=$PWD/localcachedir
export SINGULARITY_CACHEDIR=$PWD/cachedir
export SINGULARITY_TMPDIR=$PWD/tmpdir

sudo -E singularity build mlcont-gpu.sif Singularity.gpu 
sudo -E singularity build mlcont-cpu.sif Singularity.cpu
