class Animal < ApplicationRecord

  CATEGORIES = %w(cat dog fish mouse lion)
  validates :name, presence:true
  validates :category, inclusion: { in: CATEGORIES }
end
