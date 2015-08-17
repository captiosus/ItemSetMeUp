require 'taric'
require 'faraday'
require 'typhoeus'
require 'typhoeus/adapters/faraday'
class Riotapi < ActiveRecord::Base
  def new
    Taric.configure! do |config|
      config.api_key = 'whatever_key_rito_assigned_you'
      c.adapter = :typhoeus # default is Faraday.default_adapter
    end
  end
end
