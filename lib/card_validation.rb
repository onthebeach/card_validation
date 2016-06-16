require "card_validation/version"
require "card_validation/luhn"
require "card_validation/generate/valid"
require "card_validation/generate/invalid"
require "card_validation/validity"
require "forwardable"

module CardValidation
  extend Forwardable
  extend self

  def_delegators CardValidation::GenerateValid, :valid
  def_delegators CardValidation::GenerateInvalid, :invalid
  def_delegators CardValidation::Luhn, :valid?
end
