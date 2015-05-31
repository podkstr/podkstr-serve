Pact.provider_states_for "Pokstr Serve" do
  provider_state "there is no media with given identifier" do
    no_op
  end

  provider_state "there is a media with identifier 10" do
    no_op
  end
end
