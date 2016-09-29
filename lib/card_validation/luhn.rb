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

    def valid?
      return false if nil? || empty?

      sum % 10 == 0
    end

    def double
      digits.reverse.each_with_index.map{ |x, i| i.odd? ? x * 2 : x }
    end
  end
end
