class Session < ApplicationRecord
  belongs_to :event
  belongs_to :speaker

  def self.session_list(event_id)
    Session.where("event_id = ?", event_id).order('date ASC', 'time_from ASC')
  end

end
