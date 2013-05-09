module ProjectEulerHelper
  def self.sum_arithmetic_progression(start_value, difference, count)
    (2.0 * start_value + (count - 1.0) * difference) / 2.0 * count
  end
end