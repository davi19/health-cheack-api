class Alert < ApplicationRecord
    validates :name, presence: true
    validates :starthour, presence: true
    validates :endhour, presence: true
    validates :interval, presence: true
end
