require "spec_helper"

describe Team do
  it { should have_many(:local_games) }
  it { should have_many(:visitor_games) }
end
