# predicate methods end with a ?. It is convention

puts 0.zero?
puts 1.zero?

puts 2.even?
puts 3.even?

puts 11.odd?
puts 12.odd?

puts [].empty?
puts [1,2].empty?

# to change the above methods into a predicate matcher you remove the ? at the end and append a be_ 
# at the start of the method i.e. zero? becomes be_zero


RSpec.describe 'predicate methods and matchers' do
    it 'can be tested with Ruby methods' do
        result = 16 / 2
        expect(result.even?).to be(true)
    end

    it 'can be tested with predicate matchers' do
        expect(16/2).to be_even
        expect(16/2).not_to be_odd
    end

    describe 0 do
        it { is_expected.to be_zero }
        it { is_expected.to be_even }
        it { is_expected.not_to be_odd }
    end
end