RIOT_API_KEY = "e4d67b9c-85a6-444c-b285-a36e55a34bdd"

require 'faraday'
require 'typhoeus'
require 'typhoeus/adapters/faraday'

Taric.configure! do |config|
  config.api_key = RIOT_API_KEY
  c.adapter = :typhoeus
end
