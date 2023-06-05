RSpec.describe 'not_to method' do
    it 'checks for the inverse of the matcher' do
        expect(5).not_to eq(10)
        expect([1,2,3]).not_to equal ([1,2,3])
        expect(10).not_to be_odd
        expect([1,2,3]).not_to be_empty

        expect(nil).not_to be_truthy

        expect('Philly').not_to start_with('Test')
        expect('Philly').not_to end_with('Test')

        expect(5).not_to respond_to(:length)

        expect([:a,:b,:c]).not_to include(:d)

        # Block : {}
        expect{11/3}.not_to raise_error
        
    end
end