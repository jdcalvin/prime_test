module PrimeTest
  class ProductMatrix
    attr_reader :list

    def initialize(list)
      @list = list.map(&:to_i)
    end

    def map
      rows = [[nil] + list]
      list.each do |i|
        rows << [i] + list.collect {|x| x * i}
      end
      rows
    end
  end
end