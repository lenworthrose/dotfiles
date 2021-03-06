alias killport="fuser -n tcp -k"
alias pleasestop="sudo docker stop zookeeper; sudo docker rm zookeeper;sudo docker stop eureka; sudo docker rm eureka;sudo docker stop cassandra; sudo docker rm cassandra;"
alias cassandra="killport 9160; killport 9042; sudo docker run -p 9160:9160 -p 9042:9042 -e HOST_IP=\${HOST_IP:-\$(hostname -I | awk '{print \$1}')} --name cassandra -d docker.liveopslabs.com/cassandra"
alias eureka="killport 8080; killport 8009; sudo docker run -p 8080:8080 -p 8009:8009 --name eureka -d docker.liveopslabs.com/eureka"
alias zookeeper="killport 8282; killport 2181; sudo docker run -p 8282:8282 -p 2181:2181 --name zookeeper -d docker.liveopslabs.com/zookeeper"
#alias kafka="killport 9092; sudo docker run -p 9092:9092 --name kafka -e HOST_IP=\${HOST_IP:-\$(hostname -I | awk '{print \$1}')} -v /data/kafka/logs:/var/log/supervisor:rw -v /data/kafka/logs:/var/log/kafka:rw -d docker.liveopslabs.com/kafka"
alias stats="docker run --name stats-service statsservice_stats-service"
alias drf="docker rm -f \$(docker ps -aq)"
alias dri="docker rmi \$(docker images -q --filter \"dangling=true\")"
alias statstart="lein clean; lein uberjar; docker rm statsservice_stats-service_1; docker rmi statsservice_stats-service; docker-compose up"
alias kprod="~/Downloads/kafka_2.11-0.8.2.2/bin/kafka-console-producer.sh --broker-list localhost:9092 --topic reports"
alias kcons="~/Downloads/kafka_2.11-0.8.2.2/bin/kafka-console-consumer.sh --zookeeper localhost:2181 --topic real-time"

