class Program < ActiveRecord::Base
  has_many :projects
  has_many :users
end
