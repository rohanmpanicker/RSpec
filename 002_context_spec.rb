# If you are testing a instance method it is good practice to put a # before that
# If you are testing a class method it is good practice to put a . before that
RSpec.describe '#even? method' do

    # context is nothing but an alias to describe
    context 'with even number' do 

        it 'should return true' do
            expect(4.even?).to eq(true)
        end
    
    end

    describe 'with odd number' do 

        it 'should return false' do
            expect(5.even?).to eq(false)
        end
    
    end

end