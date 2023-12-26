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
        
        expect(list.head.data).to eq("doop")
      end
    end
  end
end
