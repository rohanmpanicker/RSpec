class Actor

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def ready?
        sleep(3)
        true
    end

    def act
        "Get out, there's a bomb in there(with an Austrian accent)"
    end

    def fall_of_ladder
        "Call my agent! No way!!"
    end

    def light_on_fire
        false
    end

end

class Movie
    attr_reader :actor

    def initialize(actor)
        @actor = actor
    end

    def start_shooting
        if actor.ready?
            # puts actor.act
            # puts actor.fall_of_ladder
            # puts actor.light_on_fire
            actor.act
            actor.fall_of_ladder
            actor.light_on_fire
            actor.act
        end
    end
end


# actor = Actor.new('Brad Pitt')
# movie = Movie.new(actor)
# movie.start_shooting

RSpec.describe Movie do
    let(:stuntman) { double("Cliff Booth", ready?: true, act: 'Test String', fall_of_ladder: "Sure, let's do it!", light_on_fire: true) }

    subject { described_class.new(stuntman) }

    describe '#start_shooting method' do
        it 'expects the actor to do three actions' do
            # One Implementation
            # expect(stuntman).to receive(:ready?)
            # expect(stuntman).to receive(:act)
            # expect(stuntman).to receive(:fall_of_ladder)
            # expect(stuntman).to receive(:light_on_fire)

            # 2nd Implementation
            expect(stuntman).to receive(:light_on_fire).once
            expect(stuntman).to receive(:fall_of_ladder).exactly(1).times # alternate: expect(stuntman).to receive(:fall_of_ladder).at_most(1).times
            expect(stuntman).to receive(:act).exactly(2).times
            # alternate: expect(stuntman).to receive(:act).twice
            # alternate: expect(stuntman).to receive(:act).at_least(2).times
            subject.start_shooting
        end
    end

end