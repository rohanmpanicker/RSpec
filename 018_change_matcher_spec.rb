RSpec.describe 'change matcher' do
    subject { [1, 2, 3]}

    it 'checks that a method changes object state' do
        # Here the arguements and too closely coupled. Better to use the below approach
        expect{subject.push(4)}.to change { subject.length }.from(3).to(4)
        expect{subject.push(4)}.to change { subject.length }.by(1)
    end

    it 'checks that a method changes object state: accpeting negative arguments' do
        # Here the arguements and too closely coupled. Better to use the below approach
        # It works only for an array of length 3
        expect{subject.pop()}.to change { subject.length }.from(3).to(2)
        expect{subject.pop()}.to change { subject.length }.by(-1)
    end
end