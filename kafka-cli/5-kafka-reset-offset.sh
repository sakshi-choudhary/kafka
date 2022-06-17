# look at the documentation again
kafka-consumer-groups

# reset the offsets to the beginning of each partition
kafka-consumer-groups --bootstrap-server localhost:9092 --group my-first-application --reset-offsets --to-earliest

# execute flag is needed
kafka-consumer-groups --bootstrap-server localhost:9092 --group my-first-application --reset-offsets --to-earliest --execute

# topic flag is also needed
kafka-consumer-groups --bootstrap-server localhost:9092 --group my-first-application --reset-offsets --to-earliest --execute --topic first_topic

# consume from where the offsets have been reset
kafka-console-consumer --bootstrap-server 127.0.0.1:9092 --topic first_topic --group my-first-application

# describe the group again
kafka-consumer-groups --bootstrap-server localhost:9092 --describe --group my-first-application

# documentatior for more options
kafka-consumer-groups

# shift offsets by 2 (forward) as another strategy
kafka-consumer-groups --bootstrap-server localhost:9092 --group my-first-application --reset-offsets --shift-by 2 --execute --topic first_topic

# shift offsets by 2 (backward) as another strategy
kafka-consumer-groups --bootstrap-server localhost:9092 --group my-first-application --reset-offsets --shift-by -2 --execute --topic first_topic

# consume again
kafka-console-consumer --bootstrap-server 127.0.0.1:9092 --topic first_topic --group my-first-application


# ➜  ~ kafka-consumer-groups.sh --bootstrap-server localhost:9092 --group my_first_consumer_grp --reset-offsets --shift-by -6 --execute --all-topics

# GROUP                          TOPIC                          PARTITION  NEW-OFFSET     
# my_first_consumer_grp          mysecondtopic                  1          0              
# my_first_consumer_grp          mysecondtopic                  2          6              
# my_first_consumer_grp          mysecondtopic                  0          2              

# ➜  ~ kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic mysecondtopic --group my_first_consumer_grp
# Hello cutiess
# 567fjvj
# do u copy that?
# yoo
# gg
# frth msggg
# msg 2
# 4th msg
# yy
# one message
# thrd msg
# hiiii
# learning stuff!!!
# GG
# one msg
# msg 3
# sec msg
# fvth msgggg!