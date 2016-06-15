require 'card_validation/validity'

module CardValidation
  class Luhn
    attr_accessor :number

    include Validity

    def initialize(number)
      @number = number
    end

    def self.valid?(number)
      new(number).valid?
    end

    def doubled
      digits.reverse.each_with_index.map{ |x, i| i.odd? ? x * 2 : x }
    end

    def valid?
      sum % 10 == 0
    end
  end
end
