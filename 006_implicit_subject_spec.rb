RSpec.describe Hash do

    # subject basically creates an instance of whatever class is passed to describe. It basically does:
    # let(:subject) { Hash.new }
    # subject is isolated across between examples
    # It perform lazy loading

    it 'should start of empty' do
        puts subject
        puts subject.class
        expect(subject.length).to eq(0)
    end

    it 'should have some value' do
        expect(subject.length).to eq(0)
        subject[:some_key] = 'Some Value'
        expect(subject.length).to eq(1)
    end


end