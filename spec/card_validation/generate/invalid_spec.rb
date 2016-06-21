require 'spec_helper'
require 'card_validation'

module CardValidation
  describe GenerateInvalid do
    describe '#invalid' do
      context 'when no length is given' do
        subject { described_class.invalid }

        it 'creates an invalid card' do
          expect(CardValidation::Luhn.new(subject)).to_not be_valid
        end

        it 'it is of length 16' do
          expect(subject.to_s.length).to eql(16)
        end
      end

      context 'when a length is given' do
        subject { described_class.invalid(20) }

        it 'creates an invalid card of the given length' do
          expect(CardValidation::Luhn.new(subject)).to_not be_valid
        end

        it 'is of the given length' do
          expect(subject.to_s.length).to eql(20)
        end
      end
    end
  end
end
