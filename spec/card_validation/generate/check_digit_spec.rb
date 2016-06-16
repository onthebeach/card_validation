require 'spec_helper'
require 'card_validation'

module CardValidation
  describe CheckDigit do
    let(:card_prefix) { '4111 1111 1111 111' }
    let(:correct_check) { 1 }
    let(:full_card) { 4111111111111111 }

    describe '#check' do
      subject { described_class.check(card_prefix) }

      it 'returns the check digit' do
        expect(subject).to eql(correct_check)
      end
    end

    describe '#complete' do
      subject { described_class.complete(card_prefix) }

      it 'returns the full card number' do
        expect(subject).to eql(full_card)
      end
    end
  end
end
