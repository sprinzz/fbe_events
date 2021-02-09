class Event < ApplicationRecord

  belongs_to :category
  belongs_to :host
  has_many :sessions, dependent: :destroy

  def self.search(search)
    if search
      Event.where("event_name LIKE ?", "%#{search}%")
    else
      Event.all
    end
  end

  def self.event_title(event_id)
    Event.find(event_id)
  end

end
