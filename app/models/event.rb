class Event < ActiveRecord::Base
  belongs_to :user
  has_many :comment
  has_many :attender
end
