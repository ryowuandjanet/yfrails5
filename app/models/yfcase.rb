class Yfcase < ApplicationRecord
	# index首頁設定
	paginates_per 10 # 每頁10筆資料

	
	belongs_to :user, :optional => true
	belongs_to :country, :optional => true
	belongs_to :township, :optional => true
	has_many :personnals,dependent: :delete_all
	has_many :lands,dependent: :delete_all
	has_many :builds,dependent: :delete_all
	# has_many :buildchecklists,dependent: :delete_all
	has_many :objectbuilds,dependent: :delete_all
	has_many :subsigntrueas,dependent: :delete_all
	has_many :subsigntruebs,dependent: :delete_all
	has_many :subsigntruecs,dependent: :delete_all
	belongs_to :owner, class_name: "User", foreign_key: :user_id

	def editable_by?(user)
		user && user == owner
	end

	# AUCTION_LIST=["","第一拍","第二拍","第三拍","第四拍"]
	CLASS_LIST=["0公設","1公寓(5樓含以下無電梯)","2透天厝","3店面(店舖)","4辦公商業大樓","5住宅大樓(11層含以上有電梯)","6華廈(10層含以下有電梯)","7套房(1房(1廳)1衛)","8工廠","9廠辦","10農舍","11倉庫","12增建(持分後坪數打對折)","Z其他等型態"]
	NO_HP_CLASS_LIST=["1公寓(5樓含以下無電梯)","2透天厝","3店面(店舖)","4辦公商業大樓","5住宅大樓(11層含以上有電梯)","6華廈(10層含以下有電梯)","7套房(1房(1廳)1衛)","8工廠","9廠辦","10農舍","11倉庫","Z其他等型態"]
	COMPANY_LIST=["揚富開發有限公司","鉅鈦開發有限公司"]
	NOW_OR_BEFORE_LIST=[" ","歸類到過往記錄"]
	
	AREA_LIST=["第一種住宅區","第二種住宅區","第三種住宅區","第四種住宅區","第一種商業區","第二種商業區","第三種商業區","第四種商業區","第二種工業區","第三種工業區","行政區","文教區","倉庫區","風景區","農業區","保護區","行水區","保存區","特定專用區"]
	JUDGMENT_LIST=[" ","未判定","1拍進場","2拍進場","3拍進場","4拍進場","放棄"]
	ACTIVE_RESULT_LIST=[" ","撤回","第三人搶標","得標"]
	MOBILE_DESKTOP_LIST=["手機","電腦"]
	PRIORITY_PURCHASE_RESULT_LIST=[" ","等待優購","遭優購","無人優購"]
	APPLICATION_FOR_REGISTRATION_LIST=[" ","所有權第一次登記","所有權移轉登記","抵押權登記","抵押權塗銷登記","抵押權內容變更登記","標示變更登記"]
	REASON_FOR_REGISTRATION_LIST=[" ","買賣","拍賣"]
	MARKING_AND_APPLICATION_RIGHTS_LIST=[" ","契約書","登記清冊","複丈結果通知書","建物測量成果圖"]
	
	DEEDTAX_DEBTTAX_PAYMENT_RECEIPT_METHOD=[" ","親領","郵寄"]
	NEWSPAPER_ATTACHED_CHOICE = ["","申請","不申請"]
	DEEDTAX_CLOSE_NEWSLETTER=[" ","需要","不需要"]
	BUILD_USE_LIST=["","陽台","露台","花台","騎樓","雨遮","屋頂突出物"]
	AGE_CLASS = [" ","2拍進場","3拍進場","4拍進場","放棄"].freeze
	


	PUBLIC_LIST=[" ","公","私"]
	accepts_nested_attributes_for :lands,reject_if: proc { |attributes| attributes['land_number'].blank? },allow_destroy: true
	accepts_nested_attributes_for :builds,reject_if: proc { |attributes| attributes['build_number'].blank? },allow_destroy: true
	accepts_nested_attributes_for :personnals, reject_if: proc { |attributes| attributes['name'].blank? },allow_destroy: true
	accepts_nested_attributes_for :objectbuilds, reject_if: proc { |attributes| attributes['address'].blank? },allow_destroy: true
	validates :case_number, presence: true
end
