class Github
  include HTTParty

  base_uri 'https://api.github.com/'

  def self.get_contributors
    get("/repos/cincinnatirb/cincyrb/contributors", headers: {"User-Agent" =>"Cincyrb"})
  end

  def self.get_top_contributor
    self.get_contributors.first
  end

  def self.get_all_avatars
    self.get_contributors.map { |user| user["avatar_url"] }
  end

end
