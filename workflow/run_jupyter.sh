#!/bin/bash

#make sure you are in the same directory as this file when running it
run_jupyter()
{
    # ACTIVATE ANACONDA
    eval "$(conda shell.bash hook)"
    conda activate plantenv_pcv4_jupyter

    echo $(hostname)
    jupyter lab --no-browser --port=8888 > /dev/null 2>&1
}

export -f run_jupyter

#encapsulate the rest of the code within the bash function
srun --time=1-00:00:00 -p general --job-name=jupyterlab bash -c 'run_jupyter'
