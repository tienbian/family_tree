class Relationship < ActiveRecord::Base
  belongs_to :family
  belongs_to :relationship_type
end
