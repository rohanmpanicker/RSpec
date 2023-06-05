RSpec.describe 'all_matcher' do
    it 'allows for aggregate checks' do
        # [5,9,7].each do |element|
        #     expect(element).to be_odd
        # end

        # We used the all matcher to the same thing we did above
        expect([5,9,7]).to all(be_odd)
        expect([5,9,7]).to all(be < 10)
        expect([[],[],[]]).to all(be_empty)
        expect([0,0]).to all(be_zero)

    end

    describe [5,9,7] do
        it { is_expected.to all(be_odd) }
        it { is_expected.to all(be < 10) }
    end
end