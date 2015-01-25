class Beer < ActiveRecord::Base
  belongs_to :brewery
  has_many :ratings

  def average_rating
    sum = 0
    avg = 0
    ratings.each do |rating|
      sum += rating.score
    end
    if ratings.empty?
      avg = 0
    else
      avg = sum / ratings.count
    end
    avg
  end
end
