# Run this script to temporarily create db schema for "eos" db

./cleanup.sh

nodeos --plugin eosio::chain_api_plugin --p2p-peer-address p2p.eos42.io:9876 --p2p-peer-address api.tokenika.io:9876 --plugin eosio::sql_db_plugin --sql_db-uri="mysql://db=eos user=root password=feesimple host=127.0.0.1" --genesis-json genesis.json --config-dir . --data-dir . --blocks-dir blocks --max-irreversible-block-age 432000000 --delete-all-blocks --http-server-address=127.0.0.1:8889
