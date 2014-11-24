require_relative '../../db/config'

class Legislator < ActiveRecord::Base
  has_many :tweet_texts
end