require_relative '../config'
require_relative '../../app/models/legislator'

# this is where you should use an ActiveRecord migration to

class CreateTweets < ActiveRecord::Migration


  def change
     create_table :tweets do |t|
      t.belongs_to :legislator
      t.string :tweet_description
      t.timestamps
    end
  end
end
