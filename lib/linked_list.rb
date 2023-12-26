require "node"

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(string)
    @head = Node.new(string)
  end
end
