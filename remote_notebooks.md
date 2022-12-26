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

# kill all pultiprocess from python script
kill -9 `ps -ef | grep script.py | grep -v grep | awk '{print $2}'`
 
# attach docker container shell
    docker exec -it container_id bash
    
# dump postrges db
pg_dump --file "db_name" --host "ip_host" --port "5432" --username "user_name" --verbose --role "user_name" --format=c --blobs --compress "8" "db_name"

# dump postrges db
pg_dump database_name > database_name_file
