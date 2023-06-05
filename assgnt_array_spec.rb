RSpec.describe Array do

    it 'should be empty initially and should have a value present after push' do
        expect(subject.length).to eq(0)
        subject.push(0)
        expect(subject.length).to eq(1)
    end

end