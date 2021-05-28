require 'sloth'

describe Sloth do
    subject(:sloth){Sloth.new('Herbert')}
    describe 'initialize' do
         it 'assigns a name' do
            expect(sloth.name)to eq("Herbert")  
        end


    it 'starts with an empty array of foods' do
        expect(sloth.foods).to be_empty
    end
    end

end