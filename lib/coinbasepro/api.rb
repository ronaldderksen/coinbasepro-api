require "bigdecimal"
require "json"
require "uri"
require "net/http"
require "em-http-request"
require "faye/websocket"

require "coinbasepro/api/errors"
require "coinbasepro/api/api_object"
require "coinbasepro/api/api_response"
require "coinbasepro/api/api_client.rb"
require "coinbasepro/api/adapters/net_http.rb"
require "coinbasepro/api/adapters/em_http.rb"
require "coinbasepro/api/client"
require "coinbasepro/api/websocket"

module Coinbasepro
  # Coinbase Pro module
  module Api
  end
end
