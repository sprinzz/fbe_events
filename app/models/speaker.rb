class Speaker < ApplicationRecord
  belongs_to :speaker_role
  has_many :sessions

end
