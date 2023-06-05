RSpec.describe 'equality matcher' do
    let(:a) { 3 }
    let(:b) { 3.0 }

    describe 'eq matcher' do
        it 'tests for value and ignores type' do
            expect(a).to eq(3)
            expect(b).to eq(3.0)
            expect(a).to eq(b)
        end
    end

    describe 'eql matcher' do
        it 'tests for value and type' do
            expect(a).not_to eql(3.0)
            expect(b).not_to eql(3)
            expect(a).not_to eql(b)

            expect(a).to eql(3)
            expect(b).to eql(3.0)
        end
    end

    describe 'equal and be matcher' do
        let(:c) { [1, 2, 3] }
        let(:d) { [1, 2, 3] }
        let(:e) { c }

        it 'cares about the identity of the object' do
            expect(c).to eq(d) # checks for value only
            expect(c).to eql(d) # checks for value and type
            # This checks for value and type. In addtion to this it also checks if they point to the same 
            # memory location. For this reason, expect(c).to equal(d) would fails as though they are 
            # identical in type and value they do not reference the same memory location
            expect(c).to equal(e)

            # to be is an alias of to equal
            expect(c).to be(e)

            # This evaluates to true. Reasoning mentioned above
            expect(c).not_to equal(d)
            expect(c).not_to equal([1, 2, 3])

        end

    end

end