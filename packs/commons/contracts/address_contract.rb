require 'dry-validation'

class AddressContract < Dry::Validation::Contract
  params do
    required(:cinema_id).filled(:integer)
    required(:street).filled(:string)
    required(:number).filled(:string)
    required(:city).filled(:string)
    required(:state).filled(:string)
    required(:country).filled(:string)
    required(:zip_code).filled(:string)
  end
end
