require "rspec"
require "tdd"

describe Array do 
  describe '#my_uniq' do
    it '#my_unique should take in an array and return the unique elements in the order in which they first appeared' do
      expect([1, 2, 1, 3, 3].my_uniq).to eq([1, 2, 3])
      expect([5, 6, 5, 6, 9, 8, 7].my_uniq).to eq([5, 6, 9, 8, 7])
    end 
    
    it "should not use the built-in Array#uniq" do
      array = [1, 2, 4, 1]
      expect(array).to_not receive(:uniq)
      array.my_uniq
    end
  end 

  describe '#two_sum' do
    context "when the array contains numbers as elements" do
      it "#two_sum should return all pairs of positions, where the elements at those positions sum to 0" do
        expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
        expect([5, 3, -5, 4, -3].two_sum).to eq([[0, 2], [1, 4]])
      end
    end

    context "when the array is empty" do 
      it "should return nil" do
        expect([].two_sum).to eq(nil)
      end
    end

  end

end 