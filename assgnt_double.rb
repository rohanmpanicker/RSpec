RSpec.describe 'doubles assignment' do
    
    it 'looks to implement database connection functionality' do
        
        database_connection = double("Database Connection", connect: true)
        allow(database_connection).to receive(:disconnect).and_return('Goodbye')

        expect(database_connection.connect).to be_truthy
        expect(database_connection.disconnect).to eq('Goodbye')

    end

    it 'looks to implement the FileSystem functionality' do
        file_system = double("File System")
        allow(file_system).to receive(:read).and_return('Romeo and Juliet')
        allow(file_system).to receive_messages(write: false)
        
        expect(file_system.read).to eq('Romeo and Juliet')
        expect(file_system.write).to eq(false)
    end

end