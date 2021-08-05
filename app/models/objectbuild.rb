class Objectbuild < ApplicationRecord
    belongs_to :yfcase
    OBJECTBUILD_STATUS_LIST=["自訂","仲介"]
    OBJECTBUILD_DEAL_YEAR = ["","2010","2011","2012","2013","2014","2015","2016","2017","2018","2019","2020"
]
    OBJECTBUILD_DEAL_MONTH = ["","1","2","3","4","5","6","7","8","9","10","11","12"]
end
