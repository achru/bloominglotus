class Entry < ActiveRecord::Base
  belongs_to :student
  belongs_to :ticket
end
