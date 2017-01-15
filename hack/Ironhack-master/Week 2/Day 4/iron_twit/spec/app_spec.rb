# spec/app_spec.rb
require File.expand_path '../spec_helper.rb', __FILE__

describe 'Iron twit' do
  it "has a homepage that works" do
    get("/")
    expect(last_response).to be_ok
  end

  it "home page has a form" do
    get("/")
    expect(last_response.body).to include("form")
  end

  it "redirects when the tweet is valid" do
    post("/new_tweet", params: {body: "good"})
    expect(last_request.redirect).to be_true
  end
end