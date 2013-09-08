require "spec_helper"

describe Game do
  it { should belong_to(:local) }
  it { should belong_to(:visitor) }
  it { should belong_to(:league) }

  describe "#winner" do
    let(:local) { Team.new(:name => "Local team")}
    let(:visitor) { Team.new(:name => "Visitor team")}

    it "returns the local as winner if the score is higher" do
      game = Game.new(local_score: 2, visitor_score: 1)
      game.stub(:local).and_return(local)
      game.winner.should eq local
    end

    it "returns the visitor as winner if the score is higher" do
      game = Game.new(local_score: 1, visitor_score: 2)
      game.stub(:visitor).and_return(visitor)
      game.winner.should eq visitor
    end
  end
end