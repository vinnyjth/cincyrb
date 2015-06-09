class ContributorsController < ApplicationController
  def index
    @contributors = CincyrbGithub.get_contributors
  end
end
