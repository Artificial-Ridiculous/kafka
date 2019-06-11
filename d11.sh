#!/bin/bash 
i=1
TransactionID=1000000000
for i in $(seq 1 12)
    do
        TransactionID=`python3 /usr/local/kafka/randInt.py 20`
        CardNumber=`python3 /usr/local/kafka/randInt.py 19`
        TerminalID=`python3 /usr/local/kafka/randInt.py 11`
		TransactionDate=`date +%Y-%m-%d`
		TransactionTime=`date +%T`
		TransactionType=`python3 /usr/local/kafka/randInt.py 1`
		Amount=`python3 /usr/local/kafka/randFloat.py 4`
        echo "TransactionID:"$TransactionID", CardNumber:"$CardNumber", TerminalID:"$TerminalID", TransactionDate:"$TransactionDate", TransactionTime:"$TransactionTime", TransactionType:"$TransactionType", Amount:"$Amount >> /usr/local/kafka/d11.log
        sleep 5
    done
