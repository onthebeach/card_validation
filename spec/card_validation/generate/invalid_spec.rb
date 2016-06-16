require 'spec_helper'
require 'card_validation'

module CardValidation
  describe GenerateInvalid do
    describe '#generate_invalid' do
      subject { CardValidation::Luhn.new(described_class.invalid) }

      it 'creates an invalid card' do
        expect(subject).to_not be_valid
      end
    end
  end
end
