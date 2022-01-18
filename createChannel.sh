export CORE_PEER_TLS_ENABLED=true
export ORDERER_CA=${PWD}/artifacts/channel/crypto-config/ordererOrganizations/coffee-chain.net/orderers/orderer.coffee-chain.net/msp/tlscacerts/tlsca.coffee-chain.net-cert.pem
export PEER0_ADMIN_CA=${PWD}/artifacts/channel/crypto-config/peerOrganizations/admin.coffee-chain.net/peers/peer0.admin.coffee-chain.net/tls/ca.crt
export PEER0_INSPECTOR_CA=${PWD}/artifacts/channel/crypto-config/peerOrganizations/inspector.coffee-chain.net/peers/peer0.inspector.coffee-chain.net/tls/ca.crt
export PEER0_HARVESTER_CA=${PWD}/artifacts/channel/crypto-config/peerOrganizations/harvester.coffee-chain.net/peers/peer0.harvester.coffee-chain.net/tls/ca.crt
export PEER0_EXPORTER_CA=${PWD}/artifacts/channel/crypto-config/peerOrganizations/exporter.coffee-chain.net/peers/peer0.exporter.coffee-chain.net/tls/ca.crt
export PEER0_IMPORTER_CA=${PWD}/artifacts/channel/crypto-config/peerOrganizations/importer.coffee-chain.net/peers/peer0.importer.coffee-chain.net/tls/ca.crt
export PEER0_PROCESSOR_CA=${PWD}/artifacts/channel/crypto-config/peerOrganizations/processor.coffee-chain.net/peers/peer0.processor.coffee-chain.net/tls/ca.crt

export FABRIC_CFG_PATH=${PWD}/artifacts/channel/config/

export CHANNEL_NAME=mychannel

setGlobalsForOrderer(){
    export CORE_PEER_LOCALMSPID="OrdererMSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=${PWD}/artifacts/channel/crypto-config/ordererOrganizations/coffee-chain.net/orderers/orderer.coffee-chain.net/msp/tlscacerts/tlsca.coffee-chain.net-cert.pem
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/ordererOrganizations/coffee-chain.net/users/Admin@coffee-chain.net/msp
    
}


setGlobalsForPeer0Admin(){
    export CORE_PEER_LOCALMSPID="AdminMSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ADMIN_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/admin.coffee-chain.net/users/Admin@admin.coffee-chain.net/msp
    export CORE_PEER_ADDRESS=localhost:7051
}

setGlobalsForPeer1Admin(){
    export CORE_PEER_LOCALMSPID="AdminMSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_ADMIN_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/admin.coffee-chain.net/users/Admin@admin.coffee-chain.net/msp
    export CORE_PEER_ADDRESS=localhost:8051 
}

setGlobalsForPeer0Inspector(){
    export CORE_PEER_LOCALMSPID="InspectorMSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_INSPECTOR_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/inspector.coffee-chain.net/users/Admin@inspector.coffee-chain.net/msp
    export CORE_PEER_ADDRESS=localhost:9051
}

setGlobalsForPeer1Inspector(){
    export CORE_PEER_LOCALMSPID="InspectorMSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_INSPECTOR_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/inspector.coffee-chain.net/users/Admin@inspector.coffee-chain.net/msp
    export CORE_PEER_ADDRESS=localhost:10051 
}

setGlobalsForPeer0Harvester(){
    export CORE_PEER_LOCALMSPID="HarvesterMSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_HARVESTER_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/harvester.coffee-chain.net/users/Admin@harvester.coffee-chain.net/msp
    export CORE_PEER_ADDRESS=localhost:11051
}

setGlobalsForPeer1Harvester(){
    export CORE_PEER_LOCALMSPID="HarvesterMSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_HARVESTER_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/harvester.coffee-chain.net/users/Admin@harvester.coffee-chain.net/msp
    export CORE_PEER_ADDRESS=localhost:12051 
}

setGlobalsForPeer0Exporter(){
    export CORE_PEER_LOCALMSPID="ExporterMSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_EXPORTER_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/exporter.coffee-chain.net/users/Admin@exporter.coffee-chain.net/msp
    export CORE_PEER_ADDRESS=localhost:13051
}

setGlobalsForPeer1Exporter(){
    export CORE_PEER_LOCALMSPID="ExporterMSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_EXPORTER_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/exporter.coffee-chain.net/users/Admin@exporter.coffee-chain.net/msp
    export CORE_PEER_ADDRESS=localhost:14051 
}

setGlobalsForPeer0Importer(){
    export CORE_PEER_LOCALMSPID="ImporterMSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_IMPORTER_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/importer.coffee-chain.net/users/Admin@importer.coffee-chain.net/msp
    export CORE_PEER_ADDRESS=localhost:15051
}

setGlobalsForPeer1Importer(){
    export CORE_PEER_LOCALMSPID="ImporterMSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_IMPORTER_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/importer.coffee-chain.net/users/Admin@importer.coffee-chain.net/msp
    export CORE_PEER_ADDRESS=localhost:16051 
}

setGlobalsForPeer0Processor(){
    export CORE_PEER_LOCALMSPID="ProcessorMSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_PROCESSOR_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/processor.coffee-chain.net/users/Admin@processor.coffee-chain.net/msp
    export CORE_PEER_ADDRESS=localhost:17051
}

setGlobalsForPeer1Processor(){
    export CORE_PEER_LOCALMSPID="ProcessorMSP"
    export CORE_PEER_TLS_ROOTCERT_FILE=$PEER0_PROCESSOR_CA
    export CORE_PEER_MSPCONFIGPATH=${PWD}/artifacts/channel/crypto-config/peerOrganizations/processor.coffee-chain.net/users/Admin@processor.coffee-chain.net/msp
    export CORE_PEER_ADDRESS=localhost:18051 
}

createChannel(){
    rm -rf ./channel-artifacts/*
    setGlobalsForPeer0Admin
    
    peer channel create -o localhost:7050 -c $CHANNEL_NAME \
    --ordererTLSHostnameOverride orderer.coffee-chain.net \
    -f ./artifacts/channel/${CHANNEL_NAME}.tx --outputBlock ./channel-artifacts/${CHANNEL_NAME}.block \
    --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA
}


joinChannel(){
    setGlobalsForPeer0Admin
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block
    
    setGlobalsForPeer1Admin
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block
    
    setGlobalsForPeer0Inspector
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block
    
    setGlobalsForPeer1Inspector
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    setGlobalsForPeer0Harvester
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block
    
    setGlobalsForPeer1Harvester
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    setGlobalsForPeer0Exporter
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block
    
    setGlobalsForPeer1Exporter
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    setGlobalsForPeer0Importer
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block
    
    setGlobalsForPeer1Importer
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block

    setGlobalsForPeer0Processor
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block
    
    setGlobalsForPeer1Processor
    peer channel join -b ./channel-artifacts/$CHANNEL_NAME.block
    
}

updateAnchorPeers(){
    setGlobalsForPeer0Admin
    peer channel update -o localhost:7050 --ordererTLSHostnameOverride orderer.coffee-chain.net -c $CHANNEL_NAME -f ./artifacts/channel/${CORE_PEER_LOCALMSPID}anchors.tx --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA
    
    setGlobalsForPeer0Inspector
    peer channel update -o localhost:7050 --ordererTLSHostnameOverride orderer.coffee-chain.net -c $CHANNEL_NAME -f ./artifacts/channel/${CORE_PEER_LOCALMSPID}anchors.tx --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA

    setGlobalsForPeer0Harvester
    peer channel update -o localhost:7050 --ordererTLSHostnameOverride orderer.coffee-chain.net -c $CHANNEL_NAME -f ./artifacts/channel/${CORE_PEER_LOCALMSPID}anchors.tx --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA

    setGlobalsForPeer0Exporter
    peer channel update -o localhost:7050 --ordererTLSHostnameOverride orderer.coffee-chain.net -c $CHANNEL_NAME -f ./artifacts/channel/${CORE_PEER_LOCALMSPID}anchors.tx --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA

    setGlobalsForPeer0Importer
    peer channel update -o localhost:7050 --ordererTLSHostnameOverride orderer.coffee-chain.net -c $CHANNEL_NAME -f ./artifacts/channel/${CORE_PEER_LOCALMSPID}anchors.tx --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA

    setGlobalsForPeer0Processor
    peer channel update -o localhost:7050 --ordererTLSHostnameOverride orderer.coffee-chain.net -c $CHANNEL_NAME -f ./artifacts/channel/${CORE_PEER_LOCALMSPID}anchors.tx --tls $CORE_PEER_TLS_ENABLED --cafile $ORDERER_CA

    
}


createChannel

joinChannel

updateAnchorPeers
