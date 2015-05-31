require 'httparty'

class PodkstrServeClient
  include HTTParty
  base_uri 'http://localhost:9292'

  def post_media
    response = self.class.post('/',
                               :headers => {'Accept' => 'application/json'},
                               :query => {'slug': "2015/05/31/testing",
                                         'id': "010",
                                         'link':"http://url.to/the.file"})
    response.code
  end
end
