module Podkstr
    class ServeAPI < Grape::API
      version 'v1', using: :header, vendor: 'Podkstr'
      format :json

      get '/' do
        'Hello, world!'
      end

      desc 'Links a podcast to a media file'
      params do
        requires :id, type: Integer, desc: "The identifier of the episode"
        requires :link, type: String, desc: "The link to the media file"
        requires :slug, type: String, desc: "The slug of the episode"
      end
      post '/' do
        status 201
      end
    end
end
