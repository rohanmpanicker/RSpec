RSpec.describe 'raise_error matcher' do
    def some_method
        # This is done to emulate that the method throws an error. Here we are testing for NameError
        x
    end

    # This is done as we end the class in a line by ;
    class CustomError < StandardError; end

    # The drawback of such an implementation is that it is too vague
    # This is right but it is frowned upon
    it 'can check for any error' do
        expect { some_method }.to raise_error
    end

    it 'can check for a specific error' do
        expect { some_method }.to raise_error(NameError)
        expect { 10/0 }.to raise_error(ZeroDivisionError)
    end

    it 'checks for user-created error' do
        expect {raise CustomError}.to raise_error(CustomError)
    end


end