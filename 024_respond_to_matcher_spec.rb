class Whiskey 
    def drink
        'Responsibly'
    end

    def discard
        'Never'
    end

    def purchase(number)
        "Just purchased #{number} bottles of whiskey but I'm not an alcoholic."
    end
end

class Rum
    def drink; end
    def discard; end
    def purchase(number); end
end

RSpec.describe Whiskey do
    it 'confirms that an object can respond to that method' do
        expect(subject).to respond_to(:drink)
        expect(subject).to respond_to(:drink, :discard)
        expect(subject).to respond_to(:drink, :discard, :purchase)
    end

    it 'confirms an object can respond to amthod with arguments' do
        expect(subject).to respond_to(:purchase).with(1).arguments
    end

    it { is_expected.to respond_to(:drink, :purchase) }

    it { is_expected.to respond_to(:purchase).with(1).arguments }

end