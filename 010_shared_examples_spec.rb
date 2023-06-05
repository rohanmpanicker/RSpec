class SausageLink
    def length
        3
    end
end

RSpec.shared_examples 'a Ruby object with three elements' do
    it 'contains three elements' do
        expect(subject.length).to eq(3)
    end
end


RSpec.describe Array do
    subject { [1,2,3] }
    include_examples 'a Ruby object with three elements' 
end

RSpec.describe String do
    subject { 'abc' }
    include_examples 'a Ruby object with three elements' 
end

RSpec.describe Hash do
    subject {{a:1, b:2, c:3}}
    include_examples 'a Ruby object with three elements' 
end

RSpec.describe SausageLink do
    include_examples 'a Ruby object with three elements' 
end