# outer context
RSpec.describe 'multi context hooks' do

    # runs once at the start of outer context
    # name: outer_context
    before(:context) do
      puts 'K'
    end
   
    # run before every outer and inner example
    # name: outer_before_example
    before(:example) do
      puts 'Z'
    end
    
    # runs after every outer and inner example
    # name: outer_after_example
    after(:example) do
      puts 'E'
    end
    
    # outer example
    it 'can multiply' do
      expect(3 * 7).to eq(21)
    end
   
    # outer example
    it 'can divide' do
      expect(40 / 8).to eq(5)
    end
    
    # 1st inner context
    context 'with some criteria' do

        # runs once at the start of 1st innner context
        # name: 1st_inner_context 
        before(:context) do
            puts 'H'
        end
      
        # runs before every before 1st inner example and 2nd innner example
        # name: 1st_inner_before_example
        before(:example) do
            puts 'B'
        end
      
        # inner example
        it 'can subtract' do
            expect(10 - 5).to eq(5)
        end
      
        # 2nd inner context
        context 'in this condition' do

            # runs before example of 2nd inner context
            # name: 2nd_inner_before_example
            before(:example) do
                puts 'V'
            end
        
            # 2nd inner example
            it 'can add' do
                expect(8 + 6).to eq(14)
            end
        end
    end
end

# Output
K
Z
E
Z
E
H
Z
B
E
Z
B
V
E

# Output Exaplained
# K : we get this from outer_context
# ---------------------------------
# Z : we get this from outer_before_example
# E : we get this from outer_after_example
# ---------------------------------
# Z : we get this from outer_before_example
# E : we get this from outer_after_example
# ---------------------------------
# H : we get this from 1st_inner_context 
# ---------------------------------
# Z : we get this from outer_before_example 
# B : we get this from 1st_inner_before_example
# E : we get this form outer_after_example
# ---------------------------------
# Z : we get this from outer_before_example
# B : we get this from 1st_inner_before_example
# V : we get this from 2nd_inner_before_example
# E : we get this from outer_after_example