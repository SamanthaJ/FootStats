class Player < ActiveRecord::Base
  belongs_to :team
  has_many :events

  def as_json (options = nil)
    super({
      include: [:team, :events]
    }.merge(options || {}))
  end
end
