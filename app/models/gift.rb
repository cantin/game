class Gift < ActiveRecord::Base
  has_many :user_gifts, dependent: :destroy
  has_many :users, through: :user_gifts
end
