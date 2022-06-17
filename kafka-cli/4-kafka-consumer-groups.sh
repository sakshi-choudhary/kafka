# documentation for the command 
kafka-consumer-groups

# list consumer groups
kafka-consumer-groups --bootstrap-server localhost:9092 --list
 
# describe one specific group
kafka-consumer-groups --bootstrap-server localhost:9092 --describe --group my-second-application

# describe another group
kafka-consumer-groups --bootstrap-server localhost:9092 --describe --group my-first-application

# start a consumer
kafka-console-consumer --bootstrap-server 127.0.0.1:9092 --topic first_topic --group my-first-application

# describe the group now
kafka-consumer-groups --bootstrap-server localhost:9092 --describe --group my-first-application

# describe a console consumer group (change the end number)
kafka-consumer-groups --bootstrap-server localhost:9092 --describe --group console-consumer-10592

# start a console consumer
kafka-console-consumer --bootstrap-server 127.0.0.1:9092 --topic first_topic --group my-first-application

# describe the group again
kafka-consumer-groups --bootstrap-server localhost:9092 --describe --group my-first-application


#~ kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group my_first_consumer_grp

# Consumer group 'my_first_consumer_grp' has no active members.

# GROUP                 TOPIC           PARTITION  CURRENT-OFFSET  LOG-END-OFFSET  LAG             CONSUMER-ID     HOST            CLIENT-ID
# my_first_consumer_grp mysecondtopic   0          6               6               0               -               -               -
# my_first_consumer_grp mysecondtopic   1          5               5               0               -               -               -
# my_first_consumer_grp mysecondtopic   2          9               9               0               -               -               -
# ➜  ~ clear

# ➜  ~ kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group my_first_consumer_grp

# Consumer group 'my_first_consumer_grp' has no active members.

# GROUP                 TOPIC           PARTITION  CURRENT-OFFSET  LOG-END-OFFSET  LAG             CONSUMER-ID     HOST            CLIENT-ID
# my_first_consumer_grp mysecondtopic   0          6               6               0               -               -               -
# my_first_consumer_grp mysecondtopic   1          5               5               0               -               -               -
# my_first_consumer_grp mysecondtopic   2          9               9               0               -               -               -
# ➜  ~ kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group my_first_consumer_grp

# Consumer group 'my_first_consumer_grp' has no active members.

# GROUP                 TOPIC           PARTITION  CURRENT-OFFSET  LOG-END-OFFSET  LAG             CONSUMER-ID     HOST            CLIENT-ID
# my_first_consumer_grp mysecondtopic   0          6               8               2               -               -               -
# my_first_consumer_grp mysecondtopic   1          5               6               1               -               -               -
# my_first_consumer_grp mysecondtopic   2          9               11              2               -               -               -
# ➜  ~ kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic mysecondtopic --group my_first_consumer_grp
# frth msggg
# one message
# thrd msg
# sec msg
# fvth msgggg!
# hiiii
# ^CProcessed a total of 6 messages
# ➜  ~ kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group my_first_consumer_grp          

# Consumer group 'my_first_consumer_grp' has no active members.

# GROUP                 TOPIC           PARTITION  CURRENT-OFFSET  LOG-END-OFFSET  LAG             CONSUMER-ID     HOST            CLIENT-ID
# my_first_consumer_grp mysecondtopic   0          8               8               0               -               -               -
# my_first_consumer_grp mysecondtopic   1          6               6               0               -               -               -
# my_first_consumer_grp mysecondtopic   2          12              12              0               -               -               -
# ➜  ~ 
