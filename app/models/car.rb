class Car < ApplicationRecord
  belongs_to :user
  has_many :orders, dependent: :destroy

  has_many_attached :photos
  monetize :price_cents

  validates :brand, presence: true
  validates :year, presence: true, numericality: { only_integer: true }
  validates :model, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :description, presence: true

  scope :available, -> { where(sold: false) }

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :brand, :model, :year, :description],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
