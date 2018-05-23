require 'spec_helper'
require 'prime_test/prime_calculator'

RSpec.describe PrimeTest::PrimeCalculator do

  describe '::first_n' do
    context 'returns n amount of prime numbers as an array' do
      it 'with 10' do
        expect(described_class.first_n(10)).to eq [2,3,5,7,11,13,17,19,23,29]
      end

      it 'with 100' do
        expect(described_class.first_n(100)).to eq ([
          2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 
          67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 
          139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, 
          211, 223, 227, 229, 233, 239, 241, 251, 257, 263, 269, 271, 277, 
          281, 283, 293, 307, 311, 313, 317, 331, 337, 347, 349, 353, 359, 
          367, 373, 379, 383, 389, 397, 401, 409, 419, 421, 431, 433, 439, 
          443, 449, 457, 461, 463, 467, 479, 487, 491, 499, 503, 509, 521, 
          523, 541
        ])
      end

      it 'with nil' do
        expect(described_class.first_n(nil)).to eq []
      end
    end
  end

  describe '::prime?' do
    it "strings can be converted to numbers" do 
      expect(described_class.prime?('11')).to eq true 
    end
    it 'blank is false' do
      expect(described_class.prime?('')).to eq false
    end
    it 'nil is false' do
      expect(described_class.prime?(nil)).to eq false
    end
    it '1 is false' do
      expect(described_class.prime?(1)).to eq false
    end
  end

end
