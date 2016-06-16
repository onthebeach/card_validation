require 'card_validation/all.rb'

module CardValidation
  extend Forwardable
  extend self

  def_delegators CardValidation::GenerateValid, :valid
  def_delegators CardValidation::GenerateInvalid, :invalid
  def_delegators CardValidation::Luhn, :valid?
  def_delegators CardValidation::CheckDigit, :check, :complete
end
