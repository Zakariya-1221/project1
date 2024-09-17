require 'sinatra'
require 'sinatra/cross_origin'
require 'json'
require_relative 'evaluate'

# Enable cross-origin requests
configure do
  enable :cross_origin
end

# Allow preflight requests (OPTIONS)
options "*" do
  response.headers["Allow"] = "GET, POST, OPTIONS"
  response.headers["Access-Control-Allow-Origin"] = "*"
  response.headers["Access-Control-Allow-Methods"] = "GET, POST, OPTIONS"
  response.headers["Access-Control-Allow-Headers"] = "Content-Type"
  200
end

# Set Access-Control-Allow-Origin header for all responses
before do
    response.headers["Access-Control-Allow-Origin"] = "*"
end

#Existing POST /evaluate route
post '/evaluate' do
  expression = JSON.parse(request.body.read)["expression"]
  result = evaluate_expression(expression) # call the global function evaluate_expression
  { result: result }.to_json
end
