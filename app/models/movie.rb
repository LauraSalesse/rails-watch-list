class Movie < ApplicationRecord
  has_many :bookmarks
  # before_destroy :check_for_bookmarks

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true

  # private
  # def check_for_bookmarks
  #    if bookmarks.exists?
  #      errors.add(:base, "cannot delete movie with bookmarks")
  #      throw(:abort)
  #    end
  #  end
end


  #   def prevent_destroy
  #   if !destroyed_by_parent
  #     self-errors[:base] << "you may not delete"
  #     return false
  #   end
  # end
