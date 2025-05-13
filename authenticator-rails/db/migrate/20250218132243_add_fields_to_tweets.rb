class AddFieldsToTweets < ActiveRecord::Migration[7.2]
  def change
    add_column :tweets, :username, :string
  end
end
