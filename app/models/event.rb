class Event < ApplicationRecord

  belongs_to :category
  belongs_to :host
  has_many :sessions

  def self.session_name(event_id)
    Session.select(:name).distinct.where("course_code = ?", course_id)
  end

end
