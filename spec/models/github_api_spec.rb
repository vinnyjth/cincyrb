require 'spec_helper'

describe Github do

  describe ".github_contributors" do
    it "should return a list of all contributors" do
      VCR.use_cassette("github_contributors", :match_requests_on => [:host, :path]) do
        contributors = Github.get_contributors.map { |contributor| contributor['login'] }
        contributors.first.should == "st23am"
        contributors.last.should == "codingbull"
      end
    end
  end

end
