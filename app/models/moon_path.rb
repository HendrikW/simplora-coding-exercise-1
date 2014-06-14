class MoonPath

  attr_accessor :redirection_status_code, :image_url

  def self.fetch(channel_name)

    agent = Mechanize.new

    # TODO retrieve the correct query URL via agent.get()

    # TODO append the appid from an environment variable

    # TODO retrieve the actual API response

    # TODO get a hold of the nokogiri node

    # TODO use xpath (or css selectors ?) to retrieve the wanted image url

    # TODO have the JSON end up in the client :)
    pubnub = Pubnub.new(
        :subscribe_key => 'sub-c-e9d4fbc6-f2fb-11e3-854f-02ee2ddab7fe',
        :publish_key   => 'pub-c-9e6c99c4-6174-4686-bd07-2c6f2bc4c3ba'
    )

    pubnub.publish(
        :channel  => channel_name,
        :message  => '' # TODO
    ) { |data| puts data.response }

  end

end
