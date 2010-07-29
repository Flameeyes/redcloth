require File.expand_path('../spec_helper', __FILE__)

describe "ERB helper" do
  it "should add a textile tag to ERB" do
    template = %{<%=t "This new ERB tag makes is so _easy_ to use *RedCloth*" %>}
    expected = %{<p>This new <span class="caps">ERB</span> tag makes is so <em>easy</em> to use <strong>RedCloth</strong></p>}
    
    ERB.new(template).result.should == expected
  end
end