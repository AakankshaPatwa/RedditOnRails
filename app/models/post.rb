class Post < ApplicationRecord
    extend FriendlyId
    friendly_id :title, use: :slugged

		has_many :votes
    has_many :comments
    belongs_to :subreddit
    belongs_to :user

    has_one_attached :image

    def total_score
      votes.sum(:value)
    end
end
