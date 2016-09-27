class Matrix
  attr_reader :rows, :columns

  def initialize(string)
    @rows    = parse_rows(string)
    @columns = parse_columns(string)
  end

  def saddle_points
    @sd_point || calculate_saddle_points
  end

  private

  def parse_rows(string)
    string.split(/\n/).map { |row| row.split(' ').map(&:to_i) }
  end

  def parse_columns(string)
    @rows[0].zip( *@rows[1..-1] )
  end

  def calculate_saddle_points
    all_points.select { |row, col| saddle_point?(row, col) }
  end

  def saddle_point?(row, col)
    value = rows[row][col]
    value >= rows[row].max && value <= columns[col].min
  end

  def all_points
    row_indexes = (0..rows.size - 1).to_a
    col_indexes = (0..columns.size - 1).to_a

    row_indexes.product(col_indexes)
  end
end
