./cleanup.sh

NODEOS='./nodeos'

$NODEOS --genesis-json genesis.json --config-dir . --data-dir .  --filter-on eosio.token:transfer: --sql_db-uri "mysql://db=eos user=root password=feesimple host=127.0.0.1" 2>>./stderr &
