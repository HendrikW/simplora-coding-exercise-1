class MoonPath

  attr_accessor :redirection_status_code, :image_url

  def self.fetch

    agent = Mechanize.new

    # TODO retrieve the correct query URL via agent.get()

    # TODO append the appid from an environment variable

    # TODO retrieve the actual API response

    # TODO get a hold of the nokogiri node

    # TODO use xpath (or css selectors ?) to retrieve the wanted image url

    # TODO get the JSON to end up in the client :)

  end

end
