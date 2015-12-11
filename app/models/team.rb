class Team < ActiveRecord::Base
  has_many :players
  has_and_belongs_to_many :events

  def as_json (options = nil)
    super({
      include: [:players, :events]
    }.merge(options || {}))
  end
end
