class Event < ActiveRecord::Base
  has_many :user
  has_many :comment
  has_many :attender
end
