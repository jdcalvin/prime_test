require 'spec_helper'
require 'prime_test/terminal_table'

RSpec.describe PrimeTest::TerminalTable do

  describe '#initialize' do

    it 'throws error if matrix row size and column size are all the same' do
      data = [
        [1,2],
        [1,2,3],
        [4,5,6]
      ]
      expect{described_class.new(data)}.to raise_error(ArgumentError)
    end
  end

  describe '#rows' do
    it 'formats matrix as array of strings formatted as row columns with uniform width' do
      data = [
        [12512, 123, 121, 9],
        [6,0, 1235, 12],
        [99, 9999, 1235, 12],
        [98, 6, 12, 2]
      ]
      result = described_class.new(data).rows
      expect(result).to eq([
        "_________________________________",
        "| 12512 |   123 |   121 |     9 |",
        "|     6 |     0 |  1235 |    12 |",
        "|    99 |  9999 |  1235 |    12 |",
        "|    98 |     6 |    12 |     2 |",
        "_________________________________"
      ])
    end
  end

end
