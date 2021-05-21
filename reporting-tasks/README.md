** Working on automating this

# https://www.datainmotion.dev/2020/04/sql-reporting-task-for-cloudera-flow.html

# provenance

# JVM Metrics

[root@ec2-54-166-162-14 demo]# nifi-toolkit-1.13.2/bin/cli.sh 

# get list of tasks

nifi get-reporting-tasks  --baseUrl http://edge2ai-1.dim.local:8080 -verbose   

# get each task

nifi get-reporting-task  --baseUrl http://edge2ai-1.dim.local:8080 -verbose --reportingTaskId 07914d9f-1ce3-1174-0000-000039db6547 -ot json

