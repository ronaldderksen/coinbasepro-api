require 'spec_helper'

describe Coinbasepro::Api do
  before :all do
    @client = Coinbasepro::Api::Client.new 'api_pass', 'api_key', 'api_secret'
  end

  it "raises BadRequestError on 400" do
    stub_request(:get, /.*/)
      .to_return(body: mock_item.to_json, status: 400)
    expect { @client.orders }.to raise_error Coinbasepro::Api::BadRequestError
  end

  it "raises NotAuthorizedError on 401" do
    stub_request(:get, /.*/)
      .to_return(body: mock_item.to_json, status: 401)
    expect { @client.orders }.to raise_error Coinbasepro::Api::NotAuthorizedError
  end

  it "raises ForbiddenError on 403" do
    stub_request(:get, /.*/)
      .to_return(body: mock_item.to_json, status: 403)
    expect { @client.orders }.to raise_error Coinbasepro::Api::ForbiddenError
  end

  it "raises NotFoundError on 404" do
    stub_request(:get, /.*/)
      .to_return(body: mock_item.to_json, status: 404)
    expect { @client.orders }.to raise_error Coinbasepro::Api::NotFoundError
  end

  it "raises RateLimitError on 429" do
    stub_request(:get, /.*/)
      .to_return(body: mock_item.to_json, status: 429)
    expect { @client.orders }.to raise_error Coinbasepro::Api::RateLimitError
  end

  it "raises InternalServerError on 500" do
    stub_request(:get, /.*/)
      .to_return(body: mock_item.to_json, status: 500)
    expect { @client.orders }.to raise_error Coinbasepro::Api::InternalServerError
  end
end
