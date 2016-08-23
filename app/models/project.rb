class Project < ActiveRecord::Base
  has_many :users
  belongs_to :program

end
