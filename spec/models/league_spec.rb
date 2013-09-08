require "spec_helper"

describe League do
  it { should have_many(:games) }
end