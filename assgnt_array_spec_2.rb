RSpec.describe Array do

    subject(:sally) do
        [1, 2]
    end

    it 'sally should be initialized with a length of 2' do
        expect(sally.length).to eq(2)
        sally.pop()
        expect(sally.length).to eq(1)
    end

    it 'subject should be isolated across examples' do
        expect(subject.length).to eq(2)
    end

end