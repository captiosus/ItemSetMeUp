class Player < ActiveRecord::Base
  require 'lol'
  validates :player, presence: true
end
