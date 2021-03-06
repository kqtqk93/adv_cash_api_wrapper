require '../lib/soap_agent.rb'

api_name = "newapi"
api_key = "password"
system_account_name = "andrew"

wallets = {:amount => 6.00, :dest_wallet_id => 'G654033538046', :src_wallet_id => 'U944079833602', :comment => 'test exchange transaction'}
is_amount_in_src_wallet_currency = false

auth = Authentication.new( api_name, api_key, system_account_name )
agent = SoapAgent.new auth

result = agent.make_currency_exchange( wallets, is_amount_in_src_wallet_currency )

puts "Transaction ID: #{result.body[:make_currency_exchange_response][:return]}"
