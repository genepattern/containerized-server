#/bin/bash

#
# the --link gp-mysql would not be necessary with docker compose
# the line below uses both -v and --mount for docker volumes just to have an example of both    
#

docker run -d -p 8080:8080 --name genepattern-server --link genepattern-mysql -w /opt/gp -v /var/run/docker.sock:/run/docker.sock -v genepattern_jobResults:/opt/gp/jobResults --mount source=genepattern_users,target=/opt/gp/users --mount source=genepattern_logs,target=/opt/gp/logs -v genepattern_taskLib:/opt/gp/taskLib -t genepattern/server:latest /opt/gp/StartGenePatternServer 




