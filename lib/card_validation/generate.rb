require 'card_validation/validity'

module CardValidation
  class GenerateValid
    include Validity

    def self.valid(length = 16)
      new(length).valid
    end

    def valid
      (number * 10) + valid_check
    end
  end

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
