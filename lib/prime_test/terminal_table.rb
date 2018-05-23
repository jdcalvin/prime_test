module PrimeTest
  class TerminalTable

    attr_reader :table_data
    def initialize(table_data)
      @table_data = table_data
      validate_data!
    end

  
    def rows
      max_size = table_data.flatten.map(&:to_s).max_by(&:length).size
      r = table_data.map do |row|
        '| ' + row.map {|x| format_cell(x, max_size) }.join(" | ") + ' |'
      end
      blank_row = "_" * r.first.size

      r.unshift(blank_row)
      r.push(blank_row)
    end

    private

    def validate_data!
      rows = table_data.size
      max_cols = table_data.max_by(&:size).size
      min_cols = table_data.min_by(&:size).size
      raise ArgumentError.new("data matrix must have equal row/col length") if rows != max_cols || max_cols != min_cols
    end

    def format_cell(cell, length)
      # keep width of all cells uniform by formatting to max cell length

      (" " * (length - cell.to_s.length)) + cell.to_s
    end
  end
end