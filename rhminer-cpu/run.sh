#!/bin/bash

lscpu
CORES=$(lscpu | grep "^CPU(s):" | awk '{print $2}')
THREADS_PER_CORE=$(lscpu | grep "Thread(s) per core:" | awk '{print $4}')
THREADS="-cputhreads $(( $CORES*$THREADS_PER_CORE-1 ))"

echo ""
echo "Setting threads to: " $echo $THREADS
echo ""

# USER-defined params
if [[ -z "$PARAMS" ]]; then
    echo "Please set env-variable 'PARAMS' for mined funds."
    exit 1
fi

/rhminer ${PARAMS} ${THREADS}
