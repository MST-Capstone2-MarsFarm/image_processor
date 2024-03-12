#make sure you are in the same directory as this file when running it
my_function()
{
    echo "test"
}

export -f my_function

#encapsulate the rest of the code within the bash function
srun --time=1-00:00:00 -p general --job-name=jupyterlab bash -c 'my_function'