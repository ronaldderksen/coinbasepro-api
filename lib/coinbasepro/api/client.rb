module Coinbasepro
  module Api
    class Client < NetHTTPClient
    end

    class AsyncClient < EMHTTPClient
    end
  end
end
