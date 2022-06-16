kafka-console-consumer 

# consuming
kafka-console-consumer --bootstrap-server 127.0.0.1:9092 --topic first_topic

# other terminal
kafka-console-producer --broker-list 127.0.0.1:9092 --topic first_topic

# consuming from beginning
kafka-console-consumer --bootstrap-server 127.0.0.1:9092 --topic first_topic --from-beginning

# displaykey,values and timestamp
kafka-console-consumer.sh --bootstrap-server 127.0.0.1:9092 --topic mysecondtopic --formatter 
kafka.tools.DefaultMessageFormatter 
--property print.timestamp=true 
--property print.timestamp=true 
--property print.key=true 
--property print.value=true 
--from-beginning

# Last login: Thu Jun 16 17:56:53 on ttys000
# ➜  ~ kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic mysecondtopic
# heyo
# do u copy that?
# GG
# gfefds
# ^CProcessed a total of 4 messages
# ➜  ~ kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic mysecondtopic --from-beginning
# Hello cutiess
# 567fjvj
# do u copy that?
# I'm sakshi
# for fun
# heyo
# efds
# I'm loving kafka
# some acked mssg
# learning stuff!!!
# GG

