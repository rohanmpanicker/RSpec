RSpec.describe 'contain exactly matcher' do
    
    subject { [1, 2, 3] }

    describe 'long form syntax' do
        it 'should check the presence of all of the elements' do
            # order of the elements doesn't matter. It check for the presence of all the elements
            expect(subject).to contain_exactly(1,2,3)
            expect(subject).to contain_exactly(3,2,1)
        end
    end

    it { is_expected.to contain_exactly(1,2,3) }
    it { is_expected.to contain_exactly(3,2,1) }

end