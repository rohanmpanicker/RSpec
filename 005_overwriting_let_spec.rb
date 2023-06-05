class ProgrammingLanguage

    attr_reader :name

    # name = 'Ruby': this assigns the default value to be Ruby if the user doesn't set any
    def initialize(name = 'Ruby')
        @name = name
    end


end

RSpec.describe ProgrammingLanguage do

    let(:language) { ProgrammingLanguage.new('Python') }

    it 'should set the language name' do
        expect(language.name).to eq('Python')
    end

    context 'with no initialize arguement' do

        # If we don't define language in this scope it takes it from above scope
        let(:language) { ProgrammingLanguage.new }

        it 'should default to Ruby' do
            expect(language.name).to eq('Ruby')
        end

    end


end