RSpec.shared_context 'common' do
    before do
        @foods =[]
    end

    def some_helper_method
        5
    end

    let(:some_variable) {[1,2,3]}
end

RSpec.describe 'first example group' do
    include_context 'common'

    it 'can access outside variables' do
        expect(@foods.length).to eq(0)
        @foods << 'Chicken Tikka'
        expect(@foods.length).to eq(1)
        expect(some_helper_method).to eq(5)
        expect(some_variable.length).to eq(3)
    end

    it 're-using foods' do
        expect(@foods.length).to eq(0)
    end

end

RSpec.describe 'second example group' do
    include_context 'common'

    it 'pop off a value from some_variable' do
        some_variable.pop()
        expect(some_variable.length).to eq(2)
        expect(some_variable).to eq([1,2])
    end

end