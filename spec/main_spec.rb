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

      describe 'when the price is 15 euros' do
        let(:base_price) { 15 }
        it 'returns the correct price' do
          expect(described_class.new(base_price).calculate).to eq 22.65
        end
      end
    end

    describe '15 - 30 | 41%' do
      describe 'when the price is 16 euros' do
        let(:base_price) { 16 }
        it 'returns the correct price' do
          expect(described_class.new(base_price).calculate).to eq 24.06
        end
      end

      describe 'when the price is 20 euros' do
        let(:base_price) { 20 }
        it 'returns the correct price' do
          expect(described_class.new(base_price).calculate).to eq 29.7
        end
      end

      describe 'when the price is 30 euros' do
        let(:base_price) { 30 }
        it 'returns the correct price' do
          expect(described_class.new(base_price).calculate).to eq 43.8
        end
      end
    end

    describe '30 - 50 | 31%' do
      describe 'when the price is 31 euros' do
        let(:base_price) { 31 }
        it 'returns the correct price' do
          expect(described_class.new(base_price).calculate).to eq 45.11
        end
      end

      describe 'when the price is 40 euros' do
        let(:base_price) { 40 }
        it 'returns the correct price' do
          expect(described_class.new(base_price).calculate).to eq 56.9
        end
      end

      describe 'when the price is 50 euros' do
        let(:base_price) { 50 }
        it 'returns the correct price' do
          expect(described_class.new(base_price).calculate).to eq 70.0
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

      describe 'when the price is out of range' do
        let(:base_price) { 999999 + 1 }
        it 'raises an exception' do
          expect { described_class.new(base_price).calculate }.to raise_error OutOfRangeError
        end
      end
    end
  end
end
