class Stream < ActiveRecord::Base
  attr_accessible :name, :url

  belongs_to :station
end
