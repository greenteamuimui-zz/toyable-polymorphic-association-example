class Toy < ActiveRecord::Base
  validates :name, uniqueness:{scope: :toyable, message:"Can't own the same toy"}

  belongs_to :toyable, polymorphic: true
end
