class ProfessionalLuchador

    attr_reader :name, :finishing_move

    def initialize(name, finishing_move)
        @name = name
        @finishing_move = finishing_move
    end

end

RSpec.describe 'have_attributes matcher' do
    
    describe ProfessionalLuchador.new('Jesus Burgess', 'Galleon Lariat') do
        it 'checks for object attributes and proper values' do
            expect(subject).to have_attributes(name: 'Jesus Burgess')
            expect(subject).to have_attributes(finishing_move: 'Galleon Lariat')
        end

        it {is_expected.to have_attributes(name: 'Jesus Burgess')}
        it {is_expected.to have_attributes(finishing_move: 'Galleon Lariat')}
        it {is_expected.to have_attributes(name: 'Jesus Burgess', finishing_move: 'Galleon Lariat')}
    end

end