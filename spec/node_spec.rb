require "./lib/node"

RSpec.describe Node do
  let!(:node) { Node.new("plop") }

  describe "instance methods" do
    context "#intialize" do
      it "exists" do
        expect(node).to be_a(Node)
        expect(node.data).to eq("plop")
        expect(node.next_node).to eq(nil)
      end
    end

    context "#tail?" do
      it "returns true or false if the next node is nil" do
        expect(node.tail?).to eq(true)
      end
    end
  end
end
