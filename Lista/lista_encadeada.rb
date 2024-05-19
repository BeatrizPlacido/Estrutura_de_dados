class Node
  attr_accessor :data, :prox

  def initialize(data, prox = nil)
    @data = data
    @prox = prox
  end
end

class LinkedList
  attr_reader :first

  def initialize
    @first = nil
  end

  class << self
    def insert(data, index)
      node = Node.new(data)
      current_node = first
      i = 1

      if empty?
        @first = node
      else
        if index == 0
          node.prox = current_node
          @first = node
        else
          while i != index do
            current_node = current_node.prox
            i +=1
          end
          node.prox = current_node.prox
          current_node.prox = node
        end
      end
    end
  end

  def delete(node_to_delete)
    return if empty?

    if node_to_delete == first.data
      @first = first.prox
    else
      current_node = first
      previous_node = nil

      while node_to_delete != current_node.data do
        previous_node = current_node
        current_node = current_node.prox
      end

      previous_node.prox = current_node.prox
    end
  end

  def empty?
    first.nil?
  end

  def show
    current_node = first

    while current_node.present? do
      print "#{current_node.data} -> "

      current_node = current_node.prox
    end

    puts "NULL"
  end
end

LinkedList.insert(1, 0)
LinkedList.insert(2, 1)
LinkedList.insert(3, 2)
LinkedList.insert(4, 3)
LinkedList.insert(5, 2)
LinkedList.insert(6, 0)

LinkedList.show

LinkedList.delete(5)
LinkedList.delete(6)
