require "oystercard"
describe OysterCard do

  describe "#initialize" do
    it "Should have money" do
      expect(subject.balance).to eq(0)
    end
  end

  describe "#top_up" do
   it "should add given amount to balance" do
    subject.top_up(10)
    expect(subject.balance).to eq(10)
   end

   it "Should not push balance above £90" do
     subject.top_up(10)
     message = "£90 balance maximum exceeded, transfer cancelled"
     expect(subject.top_up(90)).to raise_error message
   end
  end

end
