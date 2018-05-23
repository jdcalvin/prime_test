require 'prime_test/prime_calculator'
require 'prime_test/product_matrix'
require 'prime_test/terminal_table'

module PrimeTest
  def self.print_table(n)
    return if n.to_i == 0 
    primes_array = PrimeCalculator.first_n(n)
    matrix = ProductMatrix.new(primes_array).map

    table = TerminalTable.new(matrix)
    puts ""
    table.rows.each do |row|
      puts row
    end
    return nil
  end
end