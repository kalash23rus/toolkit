# remote running jupyter
## jupyter notebook
function jpt_remote(){
    jupyter notebook --no-browser --port=$1
}

## jupyter-lab
function jptlab_remote(){
    jupyter-lab --no-browser --port=$1
}

# local port listening
ssh -o ExitOnForwardFailure=yes -f -N -L <port>:localhost:<port> remout_user_name@remote_server_name

# download directory with all files
wget -r -l 1 ftp://ftp.ebi.ac.uk/pub/databases/gwas/releases/latest/*
