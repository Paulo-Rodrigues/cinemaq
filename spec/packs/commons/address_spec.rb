describe Address do
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

    contract = AddressContract.new.call(params)

    address = Address.new(**contract.to_h)

    expect(address.summary).to eq('Rua A, 123 - São Paulo - SP')
  end
end
