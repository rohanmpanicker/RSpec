RSpec.describe 'inlcide matcher' do
    describe 'cold brew' do
        it 'check for inclusion of substring' do
            expect(subject).to include('cold')
            expect(subject).to include('bre')
            expect(subject).to include('brew')
        end

        it { is_expected.to include('cold') }
        it { is_expected.to include('bre') }
        it { is_expected.to include('brew') }
    end

    # for include order doesn't matter
    describe [10, 20, 30] do

        it 'checking in order and out of order' do
            expect(subject).to include(10)
            expect(subject).to include(30, 10)
        end

        it { is_expected.to include(30, 10)}
        it { is_expected.to include(10)}
        it { is_expected.to include(20, 30, 10)}
    end

    describe ({a:1, b:3}) do
        it 'can chekc for key existence' do
            expect(subject).to include(:a)
            expect(subject).to include(:a, :b)
            expect(subject).to include(:b, :a)
        end

        it { is_expected.to include(:a) }
        it { is_expected.to include(:a, :b) }
        it { is_expected.to include(:b, :a) }

        it 'can check for key value pair' do
            expect(subject).to include(a:1)
            expect(subject).to include(a:1, b:3)
        end

        it { is_expected.to include(a:1) }
    end
end