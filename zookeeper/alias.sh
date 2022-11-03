# Connect to zk cluster
alias zk='docker run -it --rm --name zkCli --network shardingsphere-practice_default zookeeper:3.8.0 bash bin/zkCli.sh -server zk-0:2181'
