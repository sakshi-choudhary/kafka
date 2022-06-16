kafka-console-producer 

# producing
kafka-console-producer --broker-list 127.0.0.1:9092 --topic first_topic 
hello stephane
awesome course
learning kafka
just another message

# producing with properties
kafka-console-producer --broker-list 127.0.0.1:9092 --topic first_topic --producer-property acks=all
some message that is acked
just for fun
fun learning!

# producing to a non existing topic
kafka-console-producer --broker-list 127.0.0.1:9092 --topic new_topic
hello world!

# our new topic only has 1 partition
kafka-topics --zookeeper 127.0.0.1:2181 --list
kafka-topics --zookeeper 127.0.0.1:2181 --topic new_topic --describe

# edit config/server.properties
# num.partitions=3

# produce against a non existing topic again
kafka-console-producer --broker-list 127.0.0.1:9092 --topic new_topic_2
hello again!

# this time our topic has 3 partitions
kafka-topics --zookeeper 127.0.0.1:2181 --list
kafka-topics --zookeeper 127.0.0.1:2181 --topic new_topic_2 --describe



# Last login: Thu Jun 16 17:36:22 on ttys006
# ➜  ~ kafka-topics.sh --bootstrap-server localhost:9092 --list

# ➜  ~ kafka-topics.sh --bootstrap-server localhost:9092 --create --topic myfirsttopic
# Created topic myfirsttopic.
# ➜  ~ kafka-topics.sh --bootstrap-server localhost:9092 --create --topic mysecondtopic --partitions 3
# Created topic mysecondtopic.
# ➜  ~ kafka-topics.sh --bootstrap-server localhost:9092 --create --topic mythirdtopic --partitions 3 --replication-factor 2
# Error while executing topic command : Replication factor: 2 larger than available brokers: 1.
# [2022-06-16 18:01:54,135] ERROR org.apache.kafka.common.errors.InvalidReplicationFactorException: Replication factor: 2 larger than available brokers: 1.
#  (kafka.admin.TopicCommand$)
# ➜  ~ kafka-topics.sh --bootstrap-server localhost:9092 --create --topic mythirdtopic --partitions 3 --replication-factor 1
# Created topic mythirdtopic.
# ➜  ~ kafka-topics.sh --bootstrap-server localhost:9092 --list
# myfirsttopic
# mysecondtopic
# mythirdtopic
# ➜  ~ kafka-topics.sh --bootstrap-server localhost:9092 --describe --topic mythirdtopic
# Topic: mythirdtopic	TopicId: csoCe4FmT1-q-j0JNHlVgA	PartitionCount: 3	ReplicationFactor: 1	Configs: 
# 	Topic: mythirdtopic	Partition: 0	Leader: 0	Replicas: 0	Isr: 0
# 	Topic: mythirdtopic	Partition: 1	Leader: 0	Replicas: 0	Isr: 0
# 	Topic: mythirdtopic	Partition: 2	Leader: 0	Replicas: 0	Isr: 0
# ➜  ~ kafka-topics.sh --bootstrap-server localhost:9092 --delete --topic myfirsttopic
# ➜  ~ kafka-topics.sh --bootstrap-server localhost:9092 --list                         
# mysecondtopic
# mythirdtopic        
# ➜  ~ kafka-topics.sh --bootstrap-server localhost:9092 --list
# mysecondtopic
# mythirdtopic
# ➜  ~ kafka-console-producer.sh --bootstrap-server localhost:9092 --topic mysecondtopic
# >Hello cutiess
# >I'm sakshi
# >I'm loving kafka
# >^C%                                                                                                                                     ➜  ~ kafka-console-producer.sh --bootstrap-server localhost:9092 --topic mysecondtopic --producer-property acks=all
# >some acked mssg
# >for fun
# >learning stuff!!!
# >567fjvj
# >^C%                                                                                                                                  ➜  ~ kafka-console-producer.sh --bootstrap-server localhost:9092 --topic mysecondtopic                            
# >heyo
# >do u copy that?
# >GG
# >efds
# >
