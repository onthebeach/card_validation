require 'spec_helper'
require 'card_validation'

class DummyClass
  include Validity
end

RSpec.describe Validity do
  subject { DummyClass.new }
  let(:clean_number) { 123412341234123 }
  let(:sum) { 67 }

  before do
    allow_any_instance_of(Validity).to receive(:clean_number).and_return(clean_number)
    allow_any_instance_of(Validity).to receive(:sum).and_return(sum)
  end

  describe '#valid' do
    let(:valid_check) { 8 }

    before do
      allow_any_instance_of(Validity).to receive(:valid_check).and_return(valid_check)
    end

    it 'returns a valid card number' do
      expect(subject.valid).to eql(1234123412341238)
    end
  end

  describe '#invalid' do
    let(:invalid_check) { 4 }

    before do
      allow_any_instance_of(Validity).to receive(:invalid_check).and_return(invalid_check)
    end

    it 'returns a valid card number' do
      expect(subject.invalid).to eql(1234123412341234)
    end
  end

  describe '#valid_check' do
    it 'returns a valid check digit' do
      expect(subject.valid_check).to eql(3)
    end
  end

  describe '#invalid_check' do
    it 'returns an invalid check digit' do
      expect(subject.invalid_check).to eql(4)
    end
  end
end
