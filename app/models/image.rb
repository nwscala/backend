class Image < ApplicationRecord
    validates :link, presence: true, uniqueness: true
end
