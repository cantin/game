class User < ActiveRecord::Base

  has_many :user_gifts, dependent: :destroy
  has_many :gifts, through: :user_gifts


  def xxx
    puts 'ddd'
  end



end
