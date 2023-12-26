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
  end
end
