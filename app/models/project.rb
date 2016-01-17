class Project < ActiveRecord::Base
  belongs_to :admin

  validates :title, :description, :url, :github, :date, :admin_id, presence: true
end