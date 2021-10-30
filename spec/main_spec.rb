require 'spec_helper'
require_relative '../main'

RSpec.describe Main do
  describe 'Tiers' do
    describe '0 - 15 | 51%' do
      describe 'when the price is 13 euros' do
        let(:base_price) { 13 }
        it 'returns the correct price' do
          expect(described_class.new(base_price).calculate).to eq 19.63
        end
      end
    end

    describe '15 - 30 | 41%' do
      describe 'when the price is 20 euros' do
        let(:base_price) { 20 }
        it 'returns the correct price' do
          expect(described_class.new(base_price).calculate).to eq 29.7
        end
      end
    end

    describe '30 - 50 | 31%' do
      describe 'when the price is 40 euros' do
        let(:base_price) { 40 }
        it 'returns the correct price' do
          expect(described_class.new(base_price).calculate).to eq 56.9
        end
      end
    end

    describe '50 and above | 21%' do
      describe 'when the price is 60 euros' do
        let(:base_price) { 60 }
        it 'returns the correct price' do
          expect(described_class.new(base_price).calculate).to eq 82.1
        end
      end
    end
  end
end
