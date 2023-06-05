# a value that evaluates to true is called Truthy
# a value that evaluates to false is called Falsy

# falsy values : false, nil
# truthy : everything else

RSpec.describe 'be matchers' do
    it 'can test for truthyness' do
        expect(true).to be_truthy
        expect('Hello').to be_truthy
        expect(5).to be_truthy
        expect(0).to be_truthy
        expect(-1).to be_truthy
        expect(5.89).to be_truthy
        expect([]).to be_truthy
        expect([5, 1]).to be_truthy
    end

    it 'can test for falsyness' do
        expect(false).to be_falsy
        expect(nil).to be_falsy
    end

    it 'can test for nil' do
        expect(nil).to be_nil

        my_hash = { a: 5 }
        # All the three statements below do the same thing
        expect(my_hash[:b]).to be_falsy
        expect(my_hash[:b]).to be_nil
        expect(my_hash[:b]).to be(nil)
    end
end