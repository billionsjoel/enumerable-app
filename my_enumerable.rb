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
    sortedArr = []
    newArr = @list.dup
    (1..newArr.count).each do |e|
      sortedArr.push(newArr.min)
      newArr.delete(newArr.min)
    end
    sortedArr
  end
end
