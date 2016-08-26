class Event < ActiveRecord::Base
  belongs_to :schedule
  has_and_belongs_to_many :users
end
