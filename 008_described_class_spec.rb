class King

    attr_reader :name

    def initialize(name)
        @name = name
    end

end

RSpec.describe King do
    # described_class references to the class instance provided in the describe context i.e. in this case King
    subject { described_class.new('Luffy')}
    let(:zorro) { described_class.new('Zorro')}

    it 'checks the name of the Pirate King' do
        expect(subject.name).to eq('Luffy')
        expect(zorro.name).to eq('Zorro')
    end
end