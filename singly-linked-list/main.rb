class Node
    attr_accessor :value, :next_node

    def initialize(value, next_node = nil)
        @value = value
        @next_node = next_node
    end
end

class SinglyLinkedList
    attr_reader :head, :tail

    def initialize
        @head = nil
        @tail = nil
    end

    def insert(value)
        newNode = Node.new(value)
        if @head.nil?
            @head = newNode
            @tail = newNode.value
            return
        end

        currentNode = @head
        until currentNode.next_node.nil?
            currentNode = currentNode.next_node
        end
        currentNode.next_node = newNode
        @tail = newNode.value
    end

    def preappend(value)
        newNode = Node.new(value)
        newNode.next_node = @head
        @head = newNode
    end

    def delete(value)
        currentNode = @head
        if currentNode.value == value
            @head = currentNode.next_node
            return true
        end

        node = find_before(value)
        node.next_node = node.next_node.next_node
        return true
    end

    def find_before(value)
        currentNode = @head
        while currentNode.next_node
            return currentNode if currentNode.next_node && currentNode.next_node.value == value
            currentNode = currentNode.next_node
        end
    end

    def search(value)
        currentNode = @head
        while currentNode != nil
            return true if currentNode.value == value
            currentNode = currentNode.next_node
        end
    end
end
