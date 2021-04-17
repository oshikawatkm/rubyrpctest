require './lib/rubyrpctest'

config = { blockchain: 'bitcoin', shema: 'http', host: '127.0.0.1', port: 18443, user: 'bitcoinrpc', password: 'Pvv9Z1rzevIrxhuqtPASwg3S8' }

Rubyrpctest::Blockchain.configure(config)
Rubyrpctest::Blockchain::BlockchainAdapter.create_wallet('hoge')