require 'spec_helper'
require 'pact/consumer/rspec'

Pact.service_consumer "Podkstr Serve Client" do
  has_pact_with "Podkstr Serve" do
    mock_service :podkstrserve do
      port 1234
    end
  end
end
