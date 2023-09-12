class Article < ApplicationRecord
  include Visible

  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

  class << self
    def home_latest_articles
      order(created_at: :desc).last(3)
    end
  end
end
