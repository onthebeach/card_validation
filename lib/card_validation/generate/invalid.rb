require 'card_validation/validity'

module CardValidation
  class GenerateInvalid
    include Validity

    def self.invalid(length = 16)
      new(length).invalid
    end

    def invalid
      (number * 10) + invalid_check
    end
  end
end
