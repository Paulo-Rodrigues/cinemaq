describe CinemaContract do
  context 'name' do
    it 'is required' do
      params = { name: nil }

      result = CinemaContract.new.call(params)

      expect(result.errors[:name]).to eq(['must be filled'])
    end

    it 'is a string' do
      params = { name: 123 }

      result = CinemaContract.new.call(params)

      expect(result.errors[:name]).to eq(['must be a string'])
    end

    it 'is valid' do
      params = { name: 'Cinema' }

      result = CinemaContract.new.call(params)

      expect(result.errors).to be_empty
      expect(result.to_h).to eq(params)
    end
  end
end
