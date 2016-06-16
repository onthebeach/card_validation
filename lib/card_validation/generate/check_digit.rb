require 'card_validation/validity'

module CardValidation
  class CheckDigit
    attr_accessor :number

    include Validity

    def initialize(number)
      @number = number
    end

    def self.check(number)
      new(number).valid_check
    end

    def self.complete(number)
      new(number).valid
    end
  end
end
