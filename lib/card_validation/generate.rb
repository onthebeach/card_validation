module CardValidation
  class Generate < Luhn
    attr_accessor :length

    def initialize(length = 16)
      @length = length
    end

    def self.valid(length = 16)
      new(length).valid
    end

    def self.invalid(length = 16)
      new(length).invalid
    end

    def valid
      (number * 10) + valid_check
    end

    def invalid
      (number * 10) + invalid_check
    end

    private

    def number
      @number ||= rand(card_min..card_max)
    end

    def card_min
      10 ** (length - 2)
    end

    def card_max
      10 ** (length - 1) - 1
    end

    def doubled
      digits.reverse.each_with_index.map{ |x, i| i.even? ? x * 2 : x }
    end

    def valid_check
      (9 * sum) % 10
    end

    def invalid_check
      valid_check == 9 ? valid_check - 1 : valid_check + 1
    end
  end
end
