class Stock < ApplicationRecord

  def self.new_lookup(ticker_symbol) #self makes it so I don't need instance var
    client = IEX::Api::Client.new(publishable_token: Rails.application.credentials.iex_client[:sandbox_api_key],
                                  endpoint: 'https://sandbox.iexapis.com/v1')
    client.price(ticker_symbol) #implied return, thanks ruby
  end
end
