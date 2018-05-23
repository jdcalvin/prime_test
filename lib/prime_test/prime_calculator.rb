module PrimeTest
  class PrimeCalculator

    LOWEST_PRIME = 2
    
    def self.first_n(n, i=LOWEST_PRIME, results=[])
      n = n.to_i

      if results.length < n
        results << i if prime?(i)
        first_n(n, i+1, results)
      end

      results
    end

    def self.sieve_up_to(max)
      list = (0..max).to_a
      list[0] = list[1] = nil
      
      list.each do |p|
        next unless p
        break if p*p > max
        (p*p).step(max, p) { |m| list[m] = nil }
      end
      
      list.compact
    end

    def self.prime?(n)
      sieve_up_to(n.to_i).include?(n.to_i)
    end
  end
end