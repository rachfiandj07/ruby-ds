require_relative '../main.rb'

describe Node do
    describe "Node #init" do
        it "should return 1 when init node value with 1" do
            newNode = Node.new(1)
            expect(newNode.value).to eq(1)
        end

        it "should next node value is nil when init value with 1" do
            newNode = Node.new(1)
            expect(newNode.next_node).to be_nil
        end
    end
end

describe SinglyLinkedList do
    describe "#insert" do
        it "should have same head value as inserted node" do
            newNode = Node.new(1)
            llist = SinglyLinkedList.new
            llist.insert(1)
            expect(llist.head.value).to eq(newNode.value)
        end

        it "should have same tail value as last inserted node" do
            newNode = Node.new(1)
            llist = SinglyLinkedList.new
            llist.insert(1)
            expect(llist.tail).to eq(newNode.value)
        end

        it "should add new pointer to another node if head is exist" do
            newNode = Node.new(2)
            llist = SinglyLinkedList.new
            llist.insert(1)
            llist.insert(2)
            expect(llist.head.next_node.value).to eq(newNode.value)
        end

        it "should has new tail if there's another node next from head" do
            newNode = Node.new(2)
            llist = SinglyLinkedList.new
            llist.insert(1)
            llist.insert(2)
            expect(llist.tail).to eq(newNode.value)
        end
    end

    describe '#preappend' do
        it "should return a new value as head if there's an existing head" do
            newNode = Node.new(1)
            llist = SinglyLinkedList.new
            llist.preappend(1)
            expect(llist.head.value).to eq(newNode.value)
        end
    end

    describe '#delete' do
        it "should delete a node by value and return true" do
            llist = SinglyLinkedList.new
            llist.insert(1)
            delete = llist.delete(1)
            expect(delete).to eq(true)
        end

        it "should delete a node when head has point to another node and return true" do
            llist = SinglyLinkedList.new
            llist.insert(1)
            llist.insert(2)
            delete = llist.delete(2)
            expect(delete).to eq(true)
        end
    end

    describe '#search' do
        it 'should find node value by node value and return true' do
            llist = SinglyLinkedList.new
            llist.insert(1)
            llist.insert(2)
            search = llist.search(2)
            expect(search).to eq(true)
        end
    end
end