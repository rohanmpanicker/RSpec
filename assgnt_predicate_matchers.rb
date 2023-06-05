RSpec.describe [10,20,30] do
    it { is_expected.to all be_even }

    it 'checking empty condition' do
        expect({}.empty?).to be(true)
        # Using predicate method 
        expect({}).to be_empty
    end
    
end

RSpec.describe [0, 1, 2] do
    it { is_expected.to all(be >= 0) }
end

RSpec.describe 'test' do
    
    it 'testing' do
        expect("hello").to be_truthy
        expect(false).to be_falsy
        expect(0).to be_truthy
        expect(-10).to be_truthy
        expect([]).to be_truthy
        expect(99.99).to be_truthy
        expect(:hello).to be_truthy
        expect(true).to be_truthy
        expect(nil).to be_falsy
        expect([1, 2, 3]).to be_truthy
    end
    
end

