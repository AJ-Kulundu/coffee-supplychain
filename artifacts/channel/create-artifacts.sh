chmod -R 0755 ./crypto-config
# Delete existing artifacts
rm -rf ./crypto-config
rm genesis.block mychannel.tx
rm -rf ../../channel-artifacts/*

#Generate Crypto artifactes for organizations
cryptogen generate --config=./crypto-config.yaml --output=./crypto-config/

# System channel
SYS_CHANNEL="sys-channel"

# channel name defaults to "mychannel"
CHANNEL_NAME="mychannel"

echo $CHANNEL_NAME

# Generate System Genesis block
configtxgen -profile OrdererGenesis -configPath . -channelID $SYS_CHANNEL  -outputBlock ./genesis.block


# Generate channel configuration block
configtxgen -profile BasicChannel -configPath . -outputCreateChannelTx ./mychannel.tx -channelID $CHANNEL_NAME

#echo "#######    Generating anchor peer update for AdminMSP  ##########"
configtxgen -profile BasicChannel -configPath . -outputAnchorPeersUpdate ./AdminMSPanchors.tx -channelID $CHANNEL_NAME -asOrg AdminMSP

#echo "#######    Generating anchor peer update for InspectorMSP  ##########"
configtxgen -profile BasicChannel -configPath . -outputAnchorPeersUpdate ./InspectorMSPanchors.tx -channelID $CHANNEL_NAME -asOrg InspectorMSP

#echo "#######    Generating anchor peer update for HarvesterMSP  ##########"
configtxgen -profile BasicChannel -configPath . -outputAnchorPeersUpdate ./HarvesterMSPanchors.tx -channelID $CHANNEL_NAME -asOrg HarvesterMSP

#echo "#######    Generating anchor peer update for ExpoerterMSP  ##########"
configtxgen -profile BasicChannel -configPath . -outputAnchorPeersUpdate ./ExporterMSPanchors.tx -channelID $CHANNEL_NAME -asOrg ExporterMSP

#echo "#######    Generating anchor peer update for ImporterMSP  ##########"
configtxgen -profile BasicChannel -configPath . -outputAnchorPeersUpdate ./ImporterMSPanchors.tx -channelID $CHANNEL_NAME -asOrg ImporterMSP

#echo "#######    Generating anchor peer update for ProcessorMSP  ##########"
configtxgen -profile BasicChannel -configPath . -outputAnchorPeersUpdate ./ProcessorMSPanchors.tx -channelID $CHANNEL_NAME -asOrg ProcessorMSP