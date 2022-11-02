#!/bin/bash
mkdir -p ./pkg/proto/util
mkdir -p ./pkg/proto/core
mkdir -p ./pkg/proto/api
protoc -I./proto/tron -I/usr/lib -I./proto/googleapis \
  --go_opt=Mapi/api.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/api \
  --go_opt=Mapi/zksnark.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/api \
  --go_opt=Mcore/Discover.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/Tron.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/TronInventoryItems.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/contract/account_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/contract/asset_issue_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/contract/balance_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/contract/common.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/contract/exchange_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/contract/market_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/contract/proposal_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/contract/shield_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/contract/smart_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/contract/storage_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/contract/vote_asset_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/contract/witness_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go-grpc_opt=Mapi/api.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/api \
  --go-grpc_opt=Mapi/zksnark.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/api \
  --go-grpc_opt=Mcore/Discover.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go-grpc_opt=Mcore/Tron.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go-grpc_opt=Mcore/TronInventoryItems.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go-grpc_opt=Mcore/contract/account_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go-grpc_opt=Mcore/contract/asset_issue_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go-grpc_opt=Mcore/contract/balance_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go-grpc_opt=Mcore/contract/common.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go-grpc_opt=Mcore/contract/exchange_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go-grpc_opt=Mcore/contract/market_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go-grpc_opt=Mcore/contract/proposal_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go-grpc_opt=Mcore/contract/shield_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go-grpc_opt=Mcore/contract/smart_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go-grpc_opt=Mcore/contract/storage_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go-grpc_opt=Mcore/contract/vote_asset_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go-grpc_opt=Mcore/contract/witness_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_out=./pkg/proto \
  --go_opt=paths=source_relative \
  --go-grpc_out=./pkg/proto \
  --go-grpc_opt=paths=source_relative \
  ./proto/tron/core/*.proto ./proto/tron/api/*.proto
  # ./proto/tron/core/*.proto ./proto/tron/core/contract/*.proto ./proto/tron/api/*.proto
protoc -I./proto/tron -I/usr/lib -I./proto/googleapis \
  --go_opt=Mapi/api.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/api \
  --go_opt=Mapi/zksnark.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/api \
  --go_opt=Mcore/Discover.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/Tron.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/TronInventoryItems.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/contract/account_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/contract/asset_issue_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/contract/balance_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/contract/common.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/contract/exchange_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/contract/market_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/contract/proposal_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/contract/shield_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/contract/smart_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/contract/storage_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/contract/vote_asset_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/contract/witness_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go-grpc_opt=Mapi/api.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/api \
  --go-grpc_opt=Mapi/zksnark.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/api \
  --go-grpc_opt=Mcore/Discover.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go-grpc_opt=Mcore/Tron.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go-grpc_opt=Mcore/TronInventoryItems.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go-grpc_opt=Mcore/contract/account_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go-grpc_opt=Mcore/contract/asset_issue_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go-grpc_opt=Mcore/contract/balance_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go-grpc_opt=Mcore/contract/common.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go-grpc_opt=Mcore/contract/exchange_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go-grpc_opt=Mcore/contract/market_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go-grpc_opt=Mcore/contract/proposal_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go-grpc_opt=Mcore/contract/shield_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go-grpc_opt=Mcore/contract/smart_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go-grpc_opt=Mcore/contract/storage_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go-grpc_opt=Mcore/contract/vote_asset_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go-grpc_opt=Mcore/contract/witness_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_out=./pkg/proto \
  --go_opt=module=github.com/fbsobreira/gotron-sdk/pkg/proto \
  --go-grpc_out=./pkg/proto \
  --go-grpc_opt=module=github.com/fbsobreira/gotron-sdk/pkg/proto \
  ./proto/tron/core/contract/*.proto
#protoc -I=./proto/tron -I/usr/lib -I./proto/googleapis --go_out=./pkg/proto --go_opt= --go_opt=paths=source_relative ./proto/tron/api/*.proto
# mkdir -p ./pkg/proto/util
protoc -I=./proto/tron -I./proto/util -I/usr/lib -I./proto/googleapis \
  --go_opt=Mapi/api.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/api \
  --go_opt=Mapi/zksnark.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/api \
  --go_opt=Mcore/Discover.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/Tron.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/TronInventoryItems.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/contract/account_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/contract/asset_issue_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/contract/balance_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/contract/common.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/contract/exchange_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/contract/market_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/contract/proposal_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/contract/shield_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/contract/smart_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/contract/storage_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/contract/vote_asset_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_opt=Mcore/contract/witness_contract.proto=github.com/fbsobreira/gotron-sdk/pkg/proto/core \
  --go_out=./pkg/proto/util \
  --go_opt=paths=source_relative \
  --go-grpc_out=./pkg/proto/util \
  --go-grpc_opt=paths=source_relative \
  ./proto/util/*.proto