require 'spec_helper'
require 'card_validation'

module CardValidation
  describe Luhn do
    subject { CardValidation::Luhn.new(card_number) }

    let(:real_card_number) { '79927398713' }
    let(:fake_card_number) { '79927398712' }

    describe '#valid?' do
      subject { CardValidation::Luhn.new(card_number) }

      context 'the card number is valid' do
        let(:card_number) { real_card_number }

        it 'returns true' do
          expect(subject.valid?).to eql(true)
        end
      end

      context 'the card number is invalid' do
        let(:card_number) { fake_card_number }

        it 'returns false when the card is invalid' do
          expect(subject.valid?).to eql(false)
        end
      end
    end
  end
end
