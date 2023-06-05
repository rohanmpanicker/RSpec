RSpec.describe 'random double' do
    it 'only allows for defined methods to be invoked' do
        stuntman = double("Cliff Booth", fall_off_ladder: 'Ouch', light_on_fire: true)
        expect(stuntman.fall_off_ladder).to eq('Ouch')
        expect(stuntman.light_on_fire).to be_truthy
        expect(stuntman.light_on_fire).to eq(true)
    end

    it 'is an alternate way to do the above test' do
        stuntman = double("Cliff Booth")
        allow(stuntman).to receive(:fall_off_ladder)
        expect(stuntman.fall_off_ladder).to be_nil
        expect(stuntman.fall_off_ladder).to be_falsy
        allow(stuntman).to receive(:light_on_fire).and_return(true)
        expect(stuntman.light_on_fire).to eq(true)
    end

    it 'shows another way for the above 2 operations' do
        stuntman = double("Cliff Booth")
        allow(stuntman).to receive_messages(fall_off_ladder: 'Ouch', light_on_fire: true)
        expect(stuntman.fall_off_ladder).to eq('Ouch')
        expect(stuntman.light_on_fire).to be_truthy
        expect(stuntman.light_on_fire).to eq(true)
    end
end