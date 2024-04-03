class AddOverallToTweets < ActiveRecord::Migration[6.1]
  def change
    add_column :tweets, :overall, :integer
  end
end
