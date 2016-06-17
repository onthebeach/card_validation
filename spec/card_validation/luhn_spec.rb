require 'spec_helper'
require 'card_validation'

module CardValidation
  describe Luhn do
    subject { CardValidation::Luhn.new(card_number).valid? }

    let(:real_card_number) { '79927398713' }
    let(:real_card_number_spaces) { '7992 7398_713' }
    let(:real_card_number_integer) { 79927398713 }
    let(:fake_card_number) { '79927398712' }

    describe '#valid?' do
      context 'the card number is valid' do
        let(:card_number) { real_card_number }

        it { is_expected.to be(true) }

        context 'the card number has non numeric digits' do
          let(:card_number) { real_card_number_spaces }

          it { is_expected.to be(true) }
        end

        context 'the card number is an integer/fixnum' do
          let(:card_number) { real_card_number_integer }

          it { is_expected.to be(true) }
        end
      end

      context 'the card number is invalid' do
        let(:card_number) { fake_card_number }

        it { is_expected.to be(false) }
      end
    end
  end
end
