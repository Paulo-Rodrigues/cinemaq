require 'dry-validation'

class CinemaContract < Dry::Validation::Contract
  params do
    required(:name).filled(:string)
  end
end
