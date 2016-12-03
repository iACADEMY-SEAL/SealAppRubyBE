class Request < ApplicationRecord

  REQUEST_CATEGORIES = [
    "Tutorial",
    "Event Endorsement",
    "Report Incident",
    "Officer Application/Ascension",
    "Suggestions"
  ]

  validates :category, presence: true

  def created_at
    self[:created_at].strftime('%b %d %Y')
  end


end
