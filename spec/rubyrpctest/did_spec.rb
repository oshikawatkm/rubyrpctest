RSpec.describe 'Rubyrpctest::DID' do
  let(:config) {
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
  }
  let(:did_adapter) { Rubyrpctest::DID.configure(config) } 

  context do
    subject { did_adapter.create_did }
    it '#create_did' do
      expect(subject).be eq 1
    end

  end

end