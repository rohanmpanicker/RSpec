RSpec.describe 'before and after hooks' do 

    # Runs once before the context it is in
    before(:context) do
        puts 'before each context'
    end

    # Runs once after the context it is in
    after(:context) do
        puts 'after each context'
    end

    before(:example) do
        puts 'before each example'
    end

    after(:example) do
        puts 'after each example'
    end

    it 'is just a random example' do
        expect(5*30).to eq(150)
    end

    it 'is just a another random example' do 
        expect(5+30).to eq(35)
    end

end