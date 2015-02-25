class Post < ActiveRecord::Base
  # attr_accessible :body, :title, :comments, :user_id
  belongs_to :user
  scope :uncommon, -> {where("comments < ?",10) }
end
