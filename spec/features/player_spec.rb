require './player'

describe Player do
  subject(:dave) { Player.new('dave')}

    describe '#name' do
      it 'returns the name ' do
        expect(dave.name).to eq 'dave'
      end
    end
end
