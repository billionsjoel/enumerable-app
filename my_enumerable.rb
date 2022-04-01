module MyEnumerable
  def all?
    each { |num| return false unless yield(num) }
    true
  end

  def any?
    each { |num| return true if yield(num) }
    false
  end

  def filter
    arr = []
    each { |num| arr.push(num) if yield(num) }
    arr
  end

  def max
    max = 0
    each { |num| max = num if num > max }
    max
  end

  def min
    min = +1.0 / 0.0
    each { |num| min = num if num < min }
    min
  end

  def sort
    sorted_arr = []
    new_arr = @list.dup
    (1..new_arr.count).each do |_num|
      sorted_arr.push(new_arr.min)
      new_arr.delete(new_arr.min)
    end
    sorted_arr
  end
end
