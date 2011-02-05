class Affiliation < ActiveRecord::Base
  belongs_to :contact
  belongs_to :company
end
