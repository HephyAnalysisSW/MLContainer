#! /bin/sh -x

mkdir -p localcachedir cachedir tmpdir

export SINGULARITY_LOCALCACHEDIR=$PWD/localcachedir
export SINGULARITY_CACHEDIR=$PWD/cachedir
export SINGULARITY_TMPDIR=$PWD/tmpdir

OUTPUT_DIR=/local/HephyML/singularity

sudo -E singularity build ml-hats-gpu-latest.sif Singularity.gpu 
sudo -E singularity build ml-hats-cpu-latest.sif Singularity.cpu

rmdir -rf localcachedir cachedir tmpdir
