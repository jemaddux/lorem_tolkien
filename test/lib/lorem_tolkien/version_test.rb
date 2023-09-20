require_relative '../../test_helper'

describe LoremTolkien do

  it "must be defined" do
    LoremTolkien::VERSION.wont_be_nil
  end

end