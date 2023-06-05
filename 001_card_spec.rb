class Card

    attr_accessor :rank, :suit

    def initialize(rank,suit)
        @rank = rank
        @suit = suit
    end

end

# This means we will be testing something called Card
# describe method can be invoked without an arguement. It is good practice to provide one.
# describe is used to create an example group which is a collection of one or more similar examples
# Using Card has an advantage over using 'Card'. It allows Rspec to define helper methods for us. 
# The Card class should be present for us to do this
RSpec.describe Card do 

    # This run before every example and gives us a new object before every test
    # This uses Memoization(access from cache)
    # This implements Lazy loading. It means card is initialized/created only when it has to be used 
    # You can use let! to make sure this run before evry example. This is not not Lazy Loading
    let(:new_card) { Card.new('Ace','Spades') }

    # This is called a helper method
    def my_card
        Card.new("Ace", "Spades")
    end

    # This can also be written as before(:example) do
    # You can use suite/context in place of example
    # context: runs before every describe block
    # before is called a Hook
    # This implements Eager loading
    before do
        # We use @ before card to make it an instance variable
        @card = Card.new('Ace','Spades')
    end

    # it creates an example
    it 'has a rank' do
        # We use expect to create an assertion 
        expect(@card.rank).to eq('Ace')
    end

    # This fails because we create a new object of my_card on every call and do not persist its value
    it 'has a rank and it can be changed' do
        # We use expect to create an assertion 
        # expect(my_card.rank).to eq('Ace')
        # my_card.rank = 'Queen'
        # expect(my_card.rank).to eq('Queen')

        # This is how we fix it
        # Since we have defined this in let it doesn't create a new instance but uses the already generated instance
        expect(new_card.rank).to eq('Ace')
        new_card.rank = 'Queen'
        expect(new_card.rank).to eq('Queen')

    end

    it 'has a suit' do
        # We use expect to create an assertion 
        # If you use an instance variable and it doesn't exists Ruby evaluated the value to nil
        expect(@card.suit).to eq('Spades')
    end

    it 'has a custom error message' do
        # We use expect to create an assertion 
        # If you use an instance variable and it doesn't exists Ruby evaluated the value to nil
        comparison = "Spades"
        # The custom message is added after the expect statement
        expect(new_card.suit).to eq(comparison), "The expectation was to receive #{comparison} but we received #{new_card.suit} instead."
    end


    # Alternate to instance variable to reduce duplication
    it 'has a suit' do
        # We use expect to create an assertion 
        # If you use an instance variable and it doesn't exists Ruby evaluated the value to nil
        expect(my_card.suit).to eq('Spades')
    end


    # specify is nothing but an alias to it
    specify 'has a rank' do
        # We use expect to create an assertion
        expect(@card.rank).to eq('Ace')
    end

end
