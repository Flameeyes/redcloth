require File.expand_path('../../spec_helper', __FILE__)

describe "lite_mode_html" do
  examples_from_yaml do |doc|
    RedCloth.new(doc['in'], [:lite_mode]).to_html
  end
end