RSpec.describe 'shorthand syntax' do

    subject { 5 }

    context 'classic syntax' do
        it 'equals 5' do
            expect(subject).to eq(5)
        end
    end

    # only works for subject and not the let variable
    context 'one-liner syntax' do
        it { is_expected.to eq(5) }
    end
    
end