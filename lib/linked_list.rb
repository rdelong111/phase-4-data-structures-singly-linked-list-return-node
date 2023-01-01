require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def nth_from_end(n)
    return nil if @head.nil? || n < 1

    p1 = @head
    p2 = @head

    (n - 1).times do |t|
      return nil if p2.next_node.nil?
      p2 = p2.next_node
    end

    until p2.next_node.nil?
      p1 = p1.next_node
      p2 = p2.next_node
    end

    p1.value
  end

end
