module CardValidation
  class Luhn
    attr_accessor :card_number

    def initialize(card_number)
      @card_number = card_number
    end

    def self.valid?(card_number)
      new(card_number).valid?
    end

    def valid?
      sum % 10 == 0
    end

    private

    def digits
      card_number.to_s.chars.map(&:to_i)
    end

    def doubled
      digits.reverse.each_with_index.map{ |x, i| i.odd? ? x * 2 : x }
    end

    def reduced
      doubled.map{ |x| x > 9 ? x - 9 : x }
    end

    def sum
      reduced.inject(:+)
    end
  end
end
