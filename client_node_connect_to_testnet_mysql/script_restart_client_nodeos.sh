./cleanup.sh

NODEOS='/root/eos-mysql/build/programs/nodeos/nodeos'

REPLAY='--replay-blockchain --hard-replay-blockchain'

$NODEOS --config-dir . --data-dir . $REPLAY --filter-on eosio.token:transfer: --sql_db-uri "mysql://db=eos user=root password=feesimple host=127.0.0.1" 
