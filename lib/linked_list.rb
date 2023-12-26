require "node"

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(string)
    @head = Node.new(string)
  end

  def count
    count = 0

    if @head == nil
      return count
    else
      count = 1
    end

    count
  end
end
