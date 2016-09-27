Saddle Point

takes in a Matrix
  has points (row, column) => value
SaddlePoint(row_x, col_y) == S
  S >= (row_x, y) for all y
  S <= (x, col_y) for all x

returns list of saddle points

# rough sketch

~~~ ruby
class Matrix
  attr_reader :rows, :columns

  def initialize(string)
    @rows    = parse_rows(string)
    @columns = parse_columns(string)
  end

  def parse_rows(string)
  end

  def parse_columns(string)
  end

  def saddle_points
    # returns points where
    SaddlePoint(row_x, col_y) == S
      S >= (row_x, y) for all y
      S <= (x, col_y) for all x
   end
end
~~~
