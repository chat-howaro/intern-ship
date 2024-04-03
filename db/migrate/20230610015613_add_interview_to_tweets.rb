class AddInterviewToTweets < ActiveRecord::Migration[6.1]
  def change
    add_column :tweets, :interview, :string
  end
end
