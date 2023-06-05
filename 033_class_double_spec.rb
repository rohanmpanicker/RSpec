class Deck
    # This is a class method and hence we define it using self
    def self.build
        # Business logic to build the deck
        ['Ace', 'Queen']
    end

    def self.shuffle
    end
end

class CardGame

    attr_reader :cards

    def start
        # build is a class method and we do not invoke it with Deck.new. We invoke it directly
        @cards = Deck.build
    end

end

RSpec.describe CardGame do
    it 'can only implement class methods that are defined on a class' do
        # We passed Deck as a string here to show that we can use this when in TDD Deck class is not present
        # as_stubbed_const replaces the call to Deck.build with our class_double. It tells that when Deck.build is called use the
        # class_double instead of the actual Deck class
        deck_klass = class_double(Deck, build: ['Ace', 'Queen'], shuffle: ['Queen', 'Ace']).as_stubbed_const
        
        # Since this a double method the expectation ia places before the action
        expect(deck_klass).to receive(:build)
        # action
        subject.start
        expect(subject.cards). to eq(['Ace', 'Queen'])
        
    end
end