require 'rubyrpctest'

config = { blockchain: 'bitcoin', shema: 'http', host: '127.0.0.1', port: 18443, user: 'rpcuser', password: 'rpcpassword' }

Rubyrpctest::Blockchain.configure(config)
Rubyrpctest::Blockchain::BlockchainAdapter.create_wallet('hoge')