class Event < ApplicationRecord

  belongs_to :category
  belongs_to :host
  has_many :sessions
end
