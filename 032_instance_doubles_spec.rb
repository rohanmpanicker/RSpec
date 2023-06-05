class Person
    def a(seconds)
        sleep(seconds)
        "Hello"
    end
end

RSpec.describe Person do
    describe 'regulr double' do
        it 'can implement any method' do
            person = double(a: "Hello", b: 20)
            expect(person.a).to eq("Hello")

            # Here b method is not present on the Person class but the double has it and no error is thrown
        end
    end

    describe 'instance double' do
        it 'can implement methods that are defined in the class' do
            # This fails as there is no b method in class Person
            # person = instance_double(Person, a: 'Hello', b:20)
            person = instance_double(Person)
            # This fails as the a method does not have any arguements and we provided 2
            # allow(person).to receive(:a).with(3,10).and_return("Hello")
            allow(person).to receive(:a).with(3).and_return("Hello")
            expect(person.a(3)).to eq("Hello")
        end
    end
end