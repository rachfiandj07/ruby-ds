class BinarySearchTree
    def initialize
        @root = nil
    end

    def insert(value)
        newNode = Node.new(value)
        if @root.nil?
            @root = newNode
        else
            currentParent = @root
            while true
                if value < currentParent.value
                    # left
                    unless currentParent.left
                        currentParent.left = newNode
                        return
                    end
                    currentParent = currentParent.left
                else
                    # right
                    unless currentParent.right
                        currentParent.right = newNode
                        return
                    end
                    currentParent = currentParent.right
                end
            end
        end
    end

    def lookup(value)
        currentNode = @root
        while currentNode != nil
            if value < currentNode.value
                #left
                if currentNode.value == value
                    puts "value found #{value}"
                    return
                end
                currentNode = currentNode.left
            else
                #right
                if currentNode.value == value
                    puts "value found #{value}"
                    return
                end
                currentNode = currentNode.right
            end
        end
    end

    def print_bst_left
        node = @root
        until node.left.nil?
            print "("
            print node.left.value
            print ", #{node.value}, "
            print node.right.value
            print ")"
            node = node.left
        end
    end

    def print_bst_right
        node = @root
        until node.right.nil?
            print "("
            print node.left.value
            print ", #{node.value}, "
            print node.right.value
            print ")"
            node = node.right
        end
    end
end

class Node
    attr_accessor :left, :right, :value

    def initialize(left = nil, right = nil, value)
        @left = left
        @right = right
        @value = value
    end
end

bst = BinarySearchTree.new
bst.insert(9)
bst.insert(4)
bst.insert(6)
bst.insert(20)
bst.insert(170)
bst.insert(15)
bst.insert(1)
# bst.print_bst_left
# bst.print_bst_right
bst.remove(4)
bst.print_bst_left

# bst.BinarySearchTree