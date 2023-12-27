require "./lib/node"
require "./lib/linked_list"

RSpec.describe LinkedList do
  let!(:list) { LinkedList.new }

  describe "instance methods" do
    context "#intialize" do
      it "exists" do
        expect(list).to be_a(LinkedList)
        expect(list.head).to eq(nil)
      end
    end

    context "#append" do
      it "adds a node to the linked list" do
        list.append("doop")

        expect(list.head).to be_a(Node)
        expect(list.head.data).to eq("doop")
        expect(list.head.next_node).to eq(nil)
      end

      it "can append multiple nodes that are added to the end of the list" do
        list.append("doop")
        list.append("deep")

        expect(list.head).to be_a(Node)
        expect(list.head.data).to eq("doop")
        expect(list.head.next_node).to be_a(Node)
        expect(list.head.next_node.data).to eq("deep")

      end
    end

    context "#count" do
      it "counts the number of nodes in the linked list" do
        list.append("doop")

        expect(list.count).to eq(1)

        list.append("deep")

        expect(list.count).to eq(2)
      end
    end

    context "#to_string" do
      it "makes a string out of the linked list data" do
        expect(list.to_string).to eq("")

        list.append("doop")

        expect(list.to_string).to eq("doop")

        list.append("deep")

        expect(list.to_string).to eq("doop deep")
      end
    end

    context "#count_node" do
      it "counts individual nodes" do
        node = Node.new("doop")

        expect(list.count_node(node, 1)).to eq(1)
      end
    end

    context "#new_node" do
      it "creates new nodes" do
        string = "doop"

        expect(list.new_node(string)).to be_a(Node)
      end
    end
  end
end
