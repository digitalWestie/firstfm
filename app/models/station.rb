class Station < ActiveRecord::Base
  attr_accessible :description, :homepage_url, :name

  validates :name, presence: true, :length => { :minimum => 2 }

  has_many :streams, :dependent => :destroy
  has_many :favourites

end
