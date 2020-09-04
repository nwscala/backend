class Image < ApplicationRecord
    validates :link, :title, presence: true, uniqueness: true
    validates :alt, presence: true
end
