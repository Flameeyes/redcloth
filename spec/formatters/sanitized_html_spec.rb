require File.expand_path('../../spec_helper', __FILE__)

describe "sanitized_html" do
  examples_from_yaml do |doc|
    RedCloth.new(doc['in'], [:sanitize_html]).to_html
  end
end