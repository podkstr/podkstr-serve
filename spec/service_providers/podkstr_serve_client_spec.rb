require_relative 'pact_helper'

RSpec.describe PodkstrServeClient, pact: true do
  before do
    PodkstrServeClient.base_uri 'localhost:1234'
  end

  subject { PodkstrServeClient.new }

  describe 'post_media' do

    before do
      podkstrserve.
        upon_receiving("a media").
        with(method: :post,
             path: '/',
             headers: {"Accept" => "application/json"},
             query: "slug=2015%2F05%2F31%2Ftesting&id=010&link=http%3A%2F%2Furl.to%2Fthe.file").
        will_respond_with( status: 201,
                          headers: {'Content-Type' => 'application/json'})
    end

    it "saves the link to the file" do
      expect(subject.post_media).to eq(201)
    end

  end
end
