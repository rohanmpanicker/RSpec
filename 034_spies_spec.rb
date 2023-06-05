# spies: Alternate type of test double
# double method places the expectation before the action whereas spies method places the expectation after the action

RSpec.describe 'spies' do
    let(:animal) {spy('animal')}

    it 'confirms that a message has been received' do
        animal.eat_food
        # If this was a double this would have come before the animal.eat_food statement
        expect(animal).to have_received(:eat_food)
        expect(animal).not_to have_received(:eat_human)

        # In this we did not have to i,plement the eat_food or the eat_human methods
    end

    it 'resets between examples' do
        expect(animal).not_to have_received(:eat_food)
    end

    it 'retains the same functionality of a regular double' do
        animal.eat_food
        animal.eat_food
        animal.eat_food('Sushi')
        expect(animal).to have_received(:eat_food).exactly(3).times
        expect(animal).to have_received(:eat_food).at_least(2).times
        expect(animal).to have_received(:eat_food).with('Sushi')
        expect(animal).to have_received(:eat_food).once.with('Sushi')
    end
end