class Country < ApplicationRecord
	has_many :yfcases, :dependent => :destroy
	has_many :township, :dependent => :destroy
end
