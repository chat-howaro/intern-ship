class CreateTweets < ActiveRecord::Migration[6.1]
  def change
    create_table :tweets do |t|
      t.string :company
      t.integer :saraly
      t.string :root
      t.string :hour
      t.string :mood
      t.text :content
      t.text :surprising
      t.text :comment

      t.timestamps
    end
  end
end
