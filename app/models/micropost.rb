class Micropost < ActiveRecord::Base
  attr_accessible :contents

  belongs_to :user

  validates :contents, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true

  default_scope order: 'microposts.created_at DESC'
end
