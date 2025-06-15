class AddSlugToSubreddits < ActiveRecord::Migration[8.0]
  def change
    add_column :subreddits, :slug, :string
    add_index :subreddits, :slug, unique: true
  end
end
