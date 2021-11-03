class Image < ApplicationRecord
  extend Enumerize


  # ======================== VALIDATIONS ============================ #

  validates :title, presence: true
  validates :price, :presence => true, :format => { :with => /\A(\$)?(\d+)(\.|,)?\d{0,2}?\z/ }

  # ======================== ASSOCIATIONS =========================== #

  has_one_attached :media do |attachable|
    attachable.variant :thumb, resize: "100x100"
  end

  # ======================== ENUMS ================================== #

  enumerize :category, in: { people: 0, tech: 1, entertainment: 2}, default: 0, scope: true, predicates: true

end
