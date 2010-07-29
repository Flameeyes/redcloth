require File.expand_path('../../spec_helper', __FILE__)

describe "html_no_breaks" do
  examples_from_yaml do |doc|
    red = RedCloth.new(doc['in'])
    red.hard_breaks = false
    red.to_html
  end
end