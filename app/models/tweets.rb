require_relative '../../db/config'
require_relative 'legislator'
require 'twitter'

class Tweet < ActiveRecord::Base
  validates :tweet_description, uniqueness: true
  belongs_to :legislators

end

