Below this folder is an example startup using docker-compose.  Since docker-compose names
the application it starts with a project name that matches the directory name, everything is
actually in the 'genepattern' folder below.  Also note that compose prefixes the project name
to any volumes and running containers.

For this reason the docker-compose.xml names its volumes as "_logs" so that the actually created volume 
will be genepattern_logs and the run-with-docker.sh will know the names of the containers to use.

Similarly the "-mysql" container will become genepattern-mysql etc.  Not important when using compose
but its easier to keep this in sync with the scripts for the non-compose version
