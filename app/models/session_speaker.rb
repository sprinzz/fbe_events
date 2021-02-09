class SessionSpeaker < ApplicationRecord
  belongs_to :session
  blongs_to :speaker_role
  belongs_to :speaker
end
