# MLContainer
Container for ML based analysis @ HEPHY

Following packages have been installed

*  miniconda
*  python 3.8
*  root 6
*  keras
*  tensorflow

To start the container with GPU support:

   singularity shell --nv mlcont-gpu.sif

To start the container without GPU support:

   singularity shell mlcont-cpu.sif
