RSpec.describe 'nested_hooks' do

    # This will run once at the start of this context
    before(:context) do
        puts "OUTER Before context"
    end

    # This will run before every example in this context
    # All outer level hooks are valid for inner level contexts as well. It is not the other way around
    # This stands true for after as well
    before(:example) do
        puts "OUTER Before example"
    end

    it 'does simple arithematic' do
        expect(1+3).to eq(4)
    end

    context 'with condition A' do

        # This will run once at the start of this context
        before(:context) do
            puts "INNER Before context"
        end
        
        # This will run before every example in this context i.e. context 'with condition A'
        before(:example) do
            puts "INNER Before example"
        end

        it 'does simple arithematic again' do
            expect(2+3).to eq(5)
        end

        it 'does simple subtraction' do
            expect(2-3).to eq(-1)
        end

    end

end