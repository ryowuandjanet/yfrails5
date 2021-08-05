class Build < ApplicationRecord
  belongs_to :yfcase
  
  MAIN_LEVEL_LIST = ["","一層","二層","三層","四層","五層"]
  MAIN_CONSTRUCTION_LIST = ["","磚造","鐵皮屋","水泥"]
  SUB_USE_LIST= ["","陽台","露台","花台","騎樓","雨遮","屋頂突出物"]
end
