#/bin/bash

# using docker volume for MySQL files and data
docker run --name genepattern-mysql  -v genepattern_mysql_data:/var/lib/mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=password -e MYSQL_DATABASE=gpdocker -e MYSQL_USER=gpdocker -eMYSQL_PASSWORD=gpdocker -d mysql:5.7  --lower_case_table_names=1


