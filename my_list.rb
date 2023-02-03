require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*item)
    @list = item
  end

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new(1, 2, 3, 4, 5)
puts(list.any? { |item| item > 3 })
puts(list.all? { |item| item > 3 })
puts(list.filter { |item| item > 3 })
