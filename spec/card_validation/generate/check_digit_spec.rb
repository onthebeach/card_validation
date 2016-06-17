require 'spec_helper'
require 'card_validation'

module CardValidation
  describe CheckDigit do
    let(:card_prefix) { '4111 1111 1111 111' }

    describe '#check' do
      subject { described_class.check(card_prefix) }

      let(:expected) { 1 }

      it 'returns the check digit' do
        expect(subject).to eql(expected)
      end
    end

    describe '#complete' do
      subject { described_class.complete(card_prefix) }

      let(:expected) { 4111111111111111 }

      it 'returns the full card number' do
        expect(subject).to eql(expected)
      end
    end
  end
end
