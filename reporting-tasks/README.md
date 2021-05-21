** Working on automating this

# https://www.datainmotion.dev/2020/04/sql-reporting-task-for-cloudera-flow.html

# provenance

# JVM Metrics

[root@ec2-54-166-162-14 demo]# nifi-toolkit-1.13.2/bin/cli.sh 

# get list of tasks

nifi get-reporting-tasks  --baseUrl http://edge2ai-1.dim.local:8080 -verbose   

# get each task to backup and export to file

nifi get-reporting-task  --baseUrl http://edge2ai-1.dim.local:8080 -verbose --reportingTaskId 07914d9f-1ce3-1174-0000-000039db6547 -ot json

nifi get-reporting-task  --baseUrl http://edge2ai-1.dim.local:8080 -verbose -ot json --reportingTaskId 

# Import them from file

nifi create-reporting-task   --baseUrl http://edge2ai-1.dim.local:8080 -verbose -i file.json

# start them all

nifi start-reporting-tasks --baseUrl http://edge2ai-1.dim.local:8080 -verbose  
 
 
