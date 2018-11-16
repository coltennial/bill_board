class Song < ApplicationRecord
  belongs_to :art, optional: true
end
