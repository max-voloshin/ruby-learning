module ProjectEulerHelper
  def self.sum_arithmetic_progression(start_value, difference, count)
    (2.0 * start_value + (count - 1.0) * difference) / 2.0 * count
  end

  def self.get_fibonacci_by_index(index)
    range = (1..60)
    raise ArgumentError, "Index must be in #{range} range" unless range.include?(index)

    # http://en.wikipedia.org/wiki/Golden_ratio
    gold_ration = (1.0 + Math.sqrt(5.0)) / 2.0

    ((gold_ration ** index) / Math.sqrt(5.0)).round
  end
end