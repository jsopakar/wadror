class User < ActiveRecord::Base

  has_secure_password

  validates :username, uniqueness: true,
                       length: { minimum: 3,
                                 maximum: 15 }

  validates :password, length: { minimum: 4 },
                       format: { with: /(?=.*[A-Z])(?=.*[0-9])/ }


  has_many :ratings, dependent: :destroy
  has_many :beers, through: :ratings

end
