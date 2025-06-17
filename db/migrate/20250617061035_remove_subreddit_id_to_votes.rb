class RemoveSubredditIdToVotes < ActiveRecord::Migration[8.0]
  def change
    remove_column :votes, :subreddit_id, :integer
  end
end
