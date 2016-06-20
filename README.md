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

### Luhn Card Validation

```
CardValidation.valid?(1234_1234_1234_1238) # => true
CardValidation.valid?('1234 1234 1234 1238') # => true

CardValidation.valid?(1234123412341234) # => false
CardValidation.valid?('1234123412341234') # => false
```

### Generating Cards

**Valid** Card numbers of length `n` (with a default of 16) that will pass the Luhn Algorithm can be generated as such:
```
CardValidation.valid(n)
CardValidation.valid
```

**Invalid** Card numbers of length `n` (with a default of 16) that will fail the Luhn Algorithm can be generated as such:
```
CardValidation.invalid(n)
CardValidation.invalid
```

### Generating Check Digits

```
CardValidation.check(12) # => 5
CardValidation.complete(12) # => 125
```

### TODO

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

