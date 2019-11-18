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
  end 

end
