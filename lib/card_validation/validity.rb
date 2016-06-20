module Validity
  attr_accessor :length

  def initialize(length = 16)
    @length = length
  end

  def valid
    (clean_number * 10) + valid_check
  end

  def invalid
    (clean_number * 10) + invalid_check
  end

  def valid_check
    (9 * sum) % 10
  end

  def invalid_check
    valid_check == 9 ? valid_check - 1 : valid_check + 1
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

  def clean_string
    number.to_s.gsub(/\D/,'')
  end

  def clean_number
    clean_string.to_i
  end

  def digits
    clean_string.chars.map(&:to_i)
  end

  def double
    digits.reverse.each_with_index.map { |x, i| i.even? ? x * 2 : x }
  end

  def sum
    double.inject(0) { |x, y| reduce(x,y) }
  end

  def reduce(x, y)
    y > 9 ? x + y - 9 : x + y
  end
end
