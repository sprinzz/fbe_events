class Event < ApplicationRecord

  belongs_to :category
  belongs_to :host
  has_many :sessions

  def self.search(search)
    if search
      Event.where("event_name LIKE ?", "%#{search}%")
    else
      Event.all
    end
  end
end
