# frozen_string_literal: true

class Node
  attr_accessor :value, :next

  def initialize(value, next_node = nil)
    @value = value
    @next = next_node
  end
end

def reverse_list(head)
  previous = nil
  current = head
  while current
    next_node = current.next
    current.next = previous
    previous = current
    current = next_node
  end
  previous
end

head = Node.new("Oi")
head.next = Node.new(5)
head.next.next = Node.new('1/1/2005 14:00:00')
head.next.next.next = Node.new(1.5)
head.next.next.next.next = Node.new("Tchau")

new_head = reverse_list(head)
puts new_head.value
puts new_head.next.value
puts new_head.next.next.value
puts new_head.next.next.next.value
puts new_head.next.next.next.next.value



