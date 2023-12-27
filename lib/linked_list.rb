require "node"

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def empty?
    head.nil?
  end

  def append(string)
    if empty?
      self.head = new_node(string)
    else
      set_tail(string)
    end
  end

  def set_tail(string)
    last_node(head).next_node = new_node(string)
  end

  def last_node(node)
    return node if node.tail?
    last_node(node.next_node)
  end

  def new_node(string)
    Node.new(string)
  end

  def count
    return 0 if empty?
    count_node(head, 1)
  end

  def count_node(node, counter)
    return counter if node.tail?
    count_node(node.next_node, counter += 1)
  end

  def to_string
    return "" if empty?
    return string_starter if head.tail?
    stringify(head.next_node, string_starter)
  end

  def string_starter
    "#{head.data}"
  end

  def stringify(node, next_node)
    return concat(string_starter, node) if node.tail?
    stringify(node.next_node, concat(string_starter, node))
  end

  def concat(node, next_node)
    "#{node} #{next_node.data}"
  end
end
