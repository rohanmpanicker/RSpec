RSpec.describe Hash do

    # bob is an alias to subject
    subject(:bob) do
        {a:2, b: 1}
    end

    # this is an alternate implimentation to the above code
    # let(:bob) {  {a:2, b: 1} }

    it 'has two key-value pairs' do
        expect(subject.length).to eq(2)
        expect(bob.length).to eq(2)
    end

    describe 'nested example' do

        it 'has two key-value pairs' do
            expect(subject.length).to eq(2)
            expect(bob.length).to eq(2)
        end
        
    end

end