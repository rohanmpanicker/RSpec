# context
RSpec.describe 'regular hooks' do
    # runs once
    before(:context) do 
      puts 'A'
    end
   
    # runs before each example
    before(:example) do
      puts 'C'
    end
   
    # runs after each example
    after(:example) do
      puts 'D'
    end
    
    # runs once
    after(:context) do
      puts 'B'
    end
    
    # example
    it 'should compare strings' do
      expect('hello').to eq('hello')
    end
   
    # example
    it('should compare numbers') do
      expect(3.14).to eq(3.14)
    end

  end


  # Output: ACDCDB

