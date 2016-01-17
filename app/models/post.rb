class Post < ActiveRecord::Base
  belongs_to :admin

  validates :title, :content, :category, :date, :admin_id, presence: true
end
