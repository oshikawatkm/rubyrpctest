RSpec.describe 'Rubyrpctest::DID::Protocol::Sidetree::Operations' do
  let(:adapter) { Rubyrpctest::DID::DIDAdapter.new }
  
  
    describe '#generate' do 
      subject { Rubyrpctest::DID::Protocol::Sidetree::Operations.create_operation }
      
      it { expect (subject).to be 1 }
    end
  
    describe '#parse' do 
  
    end
  
  end