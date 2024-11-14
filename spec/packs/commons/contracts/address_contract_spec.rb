describe AddressContract do
  context 'valid' do
    it 'should be valid' do
      params = {
        cinema_id: 1,
        street: 'Rua A',
        number: '123',
        city: 'São Paulo',
        state: 'SP',
        country: 'Brasil',
        zip_code: '12345-678'
      }

      result = AddressContract.new.call(params)

      expect(result.errors).to be_empty
      expect(result.to_h).to eq(params)
    end
  end

  context 'invalid' do
    it 'should be invalid' do
      params = {
        cinema_id: nil,
        street: nil,
        number: nil,
        city: nil,
        state: nil,
        country: nil,
        zip_code: nil
      }

      result = AddressContract.new.call(params)

      expect(result.errors).to_not be_empty
      expect(result.errors[:cinema_id]).to eq(['must be filled'])
    end
  end
end
