
class MyList
include MyEnumerable
  def init(*list)
    @list = list;
  end

  def each(&block)
    @list.each(&block)
  end
end