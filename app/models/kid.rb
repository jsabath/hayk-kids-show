class Kid < ApplicationRecord
    validates :username, presence: true, uniqueness: true, length: {within: 7..20}
    validates :age, presence: true, mumericality: true, inclusion: {in: 6..15}
end
