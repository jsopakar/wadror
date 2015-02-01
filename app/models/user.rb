class User < ActiveRecord::Base

  has_secure_password

  validates :username, uniqueness: true,
                       length: { minimum: 3,
                                 maximum: 15 }

  has_many :ratings
  has_many :beers, through: :ratings

end
