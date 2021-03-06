require 'rubyrpctest'

config = { 
  blockchain: {
    type: 'bitcoin', 
    schema: 'http', 
    host: '0.0.0.0', 
    port: 18443, 
    user: 'rpcuser', 
    password: 'rpcpassword',
    default_wallet: ''
  },
  cas: {
    type: 'ipfs',
    schema: 'https',
    host: 'ipfs.infura.io',
    port: '5001'
  },
  did: {
    protocol: 'sidetree'
  },
  db: {
    type: 'mongo'
  }
}

Rubyrpctest::Blockchain.configure(config)
did = Rubyrpctest::DID.configure(config)
did.create_did

Rubyrpctest::Blockchain::Internal::BlockchainAdapter.create_wallet('hoge')