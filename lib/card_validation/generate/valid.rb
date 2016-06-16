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
end
