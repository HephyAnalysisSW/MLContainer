# MLContainer
Singularity container and conda environments for ML based analysis @ HEPHY

## machine-learning-hats

https://github.com/FNALLPC/machine-learning-hats

On HEPGPU01 its easier to use the conda environment

    conda env create --file environment-gpu.yml
    
On CLIP its better to use the container. It will
be installed after the shutdown.

    build_ml-hats.sh

Run the shell container

    run_ml-hats.sh

Run a script

    run_ml-hats.sh <scripts>

## DeepJetCore

https://github.com/DL4Jets/DeepJetCore


# Container for DeepJetCore

Build the container (only on  HEPGPU01)

    build_deepjet3.sh

Run the container

    run_deepjet3.sh

## TODO

Try container on CLIP

## Open Points

### Conda Environments on CLIP

CLIP provides already installations of Conda

    ml add Anaconda3/19.10

Nevertheless I could not build reliable environments due to limited
quota. Also trying to move the correspondig directories to /scratch-cbe/users
was not successfull.

At this point it seems better to use the conda environment inside a container.

### Building Container on CLIP

Building containers on CLIP has two problems

*   root rights required to build container (possible solution fakeroot)
*   docker container could be transformed in singularity container, but
the filesystems (BeeGEFS) do not fullfill the singularity requirements

The best way seems to use CI with Jenkis ans the local singularity hub. This 
has to be understood in the future.

### Building Container on HEPGPU01

Root rights are required in case container are build from scratch. Fakeroot
would be a possible workaround. Has to be tried.

Another possibility is to use "sudo".