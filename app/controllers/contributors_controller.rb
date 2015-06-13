class ContributorsController < ApplicationController
  def index
    @contributors = Github.get_contributors
  end
end
