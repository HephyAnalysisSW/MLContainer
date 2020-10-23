#! /bin/sh -x

export SINGULARITY_CACHEDIR=/local/$USER/singularity_cache
export SINGULARITY_TMPDIR=/local/$USER/singularity_tmp

OUTPUT_DIR=/local/HephyML/singularity/images

singularity build $OUTPUT_DIR/deepjetcore3-latest.sif docker://cernml4reco/deepjetcore3:latest
