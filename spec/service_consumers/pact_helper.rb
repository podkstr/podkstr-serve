require 'spec_helper'
require 'pact/provider/rspec'
require_relative "provider_states_for_podkstr_serve"

Pact.service_provider "Podkstr Serve" do

  honours_pact_with 'Podkster Serve Client' do
    pact_uri 'spec/pacts/podkstr_serve_client-podkstr_serve.json'
  end

end

