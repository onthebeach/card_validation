# CardValidation

Validates & Generates card numbers.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'card_validation'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install card_validation

## Usage

### Generating Cards

**Valid** Card numbers of length `n` (with a default of 16) that will pass the Luhn Algorithm can be generated as such:
```
CardValidation::Generate.valid(n)
CardValidation::Generate.new(n).valid
```

**Invalid** Card numbers of length `n` that will fail the Luhn Algorithm can be generated as such:
```
CardValidation::Generate.invalid(n)
CardValidation::Generate.new(n).invalid
```

### Luhn Card Validation

```
CardValidation::Luhn.valid?(1234123412341238) # => true
CardValidation::Luhn.valid?('1234123412341238') # => true
CardValidation::Luhn.new('1234123412341238').valid? # => true

CardValidation::Luhn.valid?(1234123412341234) # => false
CardValidation::Luhn.valid?('1234123412341234') # => false
CardValidation::Luhn.new('1234123412341234').valid?` # => false
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

