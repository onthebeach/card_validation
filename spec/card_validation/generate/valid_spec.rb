require 'spec_helper'
require 'card_validation'

module CardValidation
  describe GenerateValid do
    describe '#valid' do
      context 'when no length is given' do
        subject { described_class.valid }

        let(:card_validity) { CardValidation::Luhn.new(subject) }
        let(:card_length) { subject.to_s.length }

        it 'creates a valid card of length 16' do
          expect(card_validity).to be_valid
          expect(card_length).to eql(16)
        end
      end

      context 'when a length is given' do
        subject { described_class.valid(20) }

        let(:card_validity) { CardValidation::Luhn.new(subject) }
        let(:card_length) { subject.to_s.length }

        it 'creates a valid card of the given length' do
          expect(card_validity).to be_valid
          expect(card_length).to eql(20)
        end
      end
    end
  end
end
