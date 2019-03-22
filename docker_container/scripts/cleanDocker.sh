# stop the containers
docker stop genepattern-server genepattern-mysql

# remove them so that we start fresh next time
docker rm genepattern-server genepattern-mysql

# now remove the containers,  next startup we'll have an empty db and all folders
docker volume rm genepattern_jobResults genepattern_logs genepattern_mysql_data genepattern_taskLib genepattern_users

