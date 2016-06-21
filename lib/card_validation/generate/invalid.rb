require 'card_validation/validity'

module CardValidation
  class GenerateInvalid
    include Validity

    def self.invalid(length = 16)
      new(length).invalid
    end
  end
end
