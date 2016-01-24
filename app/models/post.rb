class Post < ActiveRecord::Base
  belongs_to :admin

  def self.filter_posts(category)
    result = []
    self.all.each do |post|
      if post.category == category
        result << post
      end
    end
    result
  end

  validates :title, :content, :category, :date, :admin_id, presence: true
end
