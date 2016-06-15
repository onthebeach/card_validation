module CardValidation
  class Luhn
    attr_accessor :number

    def initialize(number)
      @number = number
    end

    def self.valid?(number)
      new(number).valid?
    end

    def valid?
      sum % 10 == 0
    end

    private

    def cleaned
      number.to_s.gsub(/\D/,'')
    end

    def digits
      cleaned.chars.map(&:to_i)
    end

    def doubled
      digits.reverse.each_with_index.map{ |x, i| i.odd? ? x * 2 : x }
    end

    def sum
      doubled.inject(0){ |x, y| y > 9 ? x + y - 9 : x + y }
    end
  end
end
