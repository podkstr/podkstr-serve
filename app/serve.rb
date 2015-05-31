module Podkstr
    class ServeAPI < Grape::API
      version 'v1', using: :header, vendor: 'Podkstr'
      format :json

      get '/' do
        'Hello, world!'
      end
    end
end
