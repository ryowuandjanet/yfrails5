class Township < ApplicationRecord
    belongs_to :country, :optional => true
    has_many :yfcases, :dependent => :destroy
end
