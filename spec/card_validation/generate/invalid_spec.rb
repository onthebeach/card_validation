require 'spec_helper'
require 'card_validation'

module CardValidation
  describe GenerateInvalid do
    describe '#invalid' do
      subject { CardValidation::Luhn.new(described_class.invalid) }

      let(:card_length) { described_class.invalid.to_s.length }

      it 'creates an invalid card' do
        expect(subject).to_not be_valid
        expect(card_length).to eql(16)
      end
    end
  end
end
