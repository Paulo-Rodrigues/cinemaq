describe Cinema do
  context 'attributes' do
    let(:contract) { CinemaContract.new.call(name: 'Cinema') }
    let(:cinema) { Cinema.new(**contract.to_h) }

    it 'has a name' do
      expect(cinema.name).to eq('Cinema')
    end

    it 'has a list of rooms' do
      expect(cinema.rooms).to eq([])
    end

    it 'address' do
    end

    it 'contacts' do
    end
  end
end
