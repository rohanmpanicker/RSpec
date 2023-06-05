RSpec.describe 'comparison matchers' do
    it 'allows for comparison with buuilt-in Ruby operators' do
        expect(10).to be > 5
        expect(10).to be < 15

        expect(1).to be >= -1
        expect(1).to be >= 1

        expect(25).to be <= 100
        expect(25).to be <= 25
    end

    # this is same as writing subject { 100 }
    describe 100 do
        it { is_expected.to be > 90 }
        it { is_expected.to be <=100 }
        it { is_expected.not_to be > 101 }
        it { is_expected.to be <=500 }
    end

end 