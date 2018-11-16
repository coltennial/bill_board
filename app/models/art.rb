class Art < ApplicationRecord
  belongs_to :board, optional: true
  has_many :songs
end
