class Riotapi < ActiveRecord::Base
  require 'taric'
  require 'faraday'
  require 'typhoeus'
  require 'typhoeus/adapters/faraday'
  def new
    Taric.configure! do |config|
      config.api_key = 'e4d67b9c-85a6-444c-b285-a36e55a34bdd'
      c.adapter = :typhoeus # default is Faraday.default_adapter
    end
  end
end
