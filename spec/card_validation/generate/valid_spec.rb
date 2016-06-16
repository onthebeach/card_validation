require 'spec_helper'
require 'card_validation'

module CardValidation
  describe GenerateValid do
    describe '#valid' do
      subject { CardValidation::Luhn.new(described_class.valid) }

      let(:card_length) { described_class.valid.to_s.length }

      it 'creates a valid card' do
        expect(subject).to be_valid
        expect(card_length).to eql(16)
      end
    end
  end
end
