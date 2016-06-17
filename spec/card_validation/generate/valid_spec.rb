require 'spec_helper'
require 'card_validation'

module CardValidation
  describe GenerateValid do
    describe '#valid' do
      context 'when no length is given' do
        subject { described_class.valid }

        it 'creates a valid card' do
          expect(CardValidation::Luhn.new(subject)).to be_valid
        end

        it 'is  of length 16' do
          expect(subject.to_s.length).to eql(16)
        end
      end

      context 'when a length is given' do
        subject { described_class.valid(20) }

        it 'creates a valid card' do
          expect(CardValidation::Luhn.new(subject)).to be_valid
        end

        it 'is of the given length' do
          expect(subject.to_s.length).to eql(20)
        end
      end
    end
  end
end
