class YfcasesController < ApplicationController
  include ApplicationHelper
  before_action :set_yfcase, only: [:edit, :update]
  before_action :show_helper, only: [:edit, :update, :destroy, :deedtax, :yfratingscale, :realestateregistration, :complaint, :letter]
  before_action :authenticate_user!

  # GET /yfcases
  # GET /yfcases.json
  def index
    prepare_variable_for_index_template
    respond_to do |format|
      format.html
      format.json
      format.pdf {render template:'yfcases/reporte', pdf: 'Reporte'}
    end
  end

  # GET /yfcases/1
  # GET /yfcases/1.json
  def show
    @yfcase = Yfcase.find(params[:id])
    # 地坪總面積 (平方公尺)
    @landtotalarea = @yfcase.lands.map{ |n| [n.land_area.to_f * (n.land_holding_point_personal.to_f / n.land_holding_point_all.to_f)] }.flatten.sum
    
    # 建坪
    
    if @yfcase.builds.where("build_type_use = ?","0公設").present?
      # 找到第一筆非公設(notPU)的個人持分(build_holding_point_personal)
      @notPU_HP_personal=@yfcase.builds.where.not("build_type_use = ?","0公設").first.build_holding_point_personal
      # 找到第一筆非公設(notPU)的個人持分(build_holding_point_all)
      @notPU_HP_all=@yfcase.builds.where.not("build_type_use = ?","0公設").first.build_holding_point_all
      # 建坪總面積 (平方公尺)-有公設 (計算"0公設"的總面積)
      @withBuildTotalArea = @yfcase.builds.where("build_type_use = ?","0公設").map { |n| [n.build_area.to_f * ((n.build_holding_point_personal.to_f * @notPU_HP_personal.to_f) / (n.build_holding_point_all.to_f * @notPU_HP_all.to_f))] }.flatten.sum 
    else
      @withBuildTotalArea = 0
    end
    
    if @yfcase.builds.where("build_type_use = ?","12增建(持分後坪數打對折)").count >0
      # 建坪總面積 (平方公尺)-有增建 (計算"12增建(持分後坪數打對折)"的總面積)
      @addBuildTotalArea = @yfcase.builds.where("build_type_use = ?","12增建(持分後坪數打對折)").map { |n| [n.build_area.to_f * ((n.build_holding_point_personal.to_f) / (n.build_holding_point_all.to_f))] }.flatten.sum * 0.5
    else
      @addBuildTotalArea = 0
    end
    
    if @yfcase.builds.where.not("build_type_use = ? OR build_type_use = ?", "0公設","12增建(持分後坪數打對折)").count > 0
      # 建坪總面積 (平方公尺)-無公設 (計算不含"0公設"及"12增建(持分後坪數打對折)"的總面積)
      @withoutBuildTotalArea = @yfcase.builds.where.not("build_type_use = ? OR build_type_use = ?", "0公設","12增建(持分後坪數打對折)").map { |n| [n.build_area.to_f * (n.build_holding_point_personal.to_f / n.build_holding_point_all.to_f)] }.flatten.sum 
    else
      @withoutBuildTotalArea = 0
    end 
    
    # 坪價(萬)
    @pingprice1 = @yfcase.floor_price_1.to_f / ((@withoutBuildTotalArea+@withBuildTotalArea+@addBuildTotalArea)*0.3025).to_f
    @pingprice2 = @yfcase.floor_price_2.to_f / ((@withoutBuildTotalArea+@withBuildTotalArea+@addBuildTotalArea)*0.3025).to_f
    @pingprice3 = @yfcase.floor_price_3.to_f / ((@withoutBuildTotalArea+@withBuildTotalArea+@addBuildTotalArea)*0.3025).to_f
    @pingprice4 = @yfcase.floor_price_4.to_f / ((@withoutBuildTotalArea+@withBuildTotalArea+@addBuildTotalArea)*0.3025).to_f

    # 時價(萬)

    marketpricecount = @yfcase.objectbuilds.count
    marketpricesum=@yfcase.objectbuilds.map { |n| [(testvalue(n.total_price.to_f / n.build_area.to_f ,n.plusa,n.plusb))] }.flatten
    @marketprice = marketpricesum.map!{|e| e.to_f}.sum.fdiv(marketpricesum.size)
    respond_to do |format|
    format.html
    format.json
    format.pdf {render template:'yfcases/deedtax', pdf: 'Deedtax'}
    end
    # respond_to do |format|
    # format.html
    #   format.pdf do 
    #     pdf = YfcasePdf.new(@yfcase)
    #     send_data pdf.render, 
    #     filename: "yfcase_#{@yfcase.case_number}.pdf",
    #     type: "application/pdf",
    #     disposition: "inline"
    #   end
    # end 
  end

  # GET /yfcases/new
  def new
    @yfcase = current_user.yfcases.build( \
    floor_price_1:0,floor_price_2:0,floor_price_3:0,floor_price_4:0,number_of_attached_quantity_1:0,\
    number_of_attached_quantity_2:0,number_of_attached_quantity_3:0,deedtaxTransferPrice:0,deedtaxUnderreportedDays:0)
    @yfcase.final_decision ||= "未判定"
  end

  # GET /yfcases/1/edit
  def edit
  end

  # POST /yfcases
  # POST /yfcases.json
  def create
    @yfcase = current_user.yfcases.build(yfcase_params)
    @yfcase.user=current_user
    respond_to do |format|
      if @yfcase.save
        format.html { redirect_to @yfcase, notice: 'Yfcase was successfully created.' }
        format.json { render :show, status: :created, location: @yfcase }
      else
        format.html { render :new }
        format.json { render json: @yfcase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yfcases/1
  # PATCH/PUT /yfcases/1.json
  def update
    respond_to do |format|
      if @yfcase.update(yfcase_params)
        format.html { redirect_to @yfcase, notice: 'Yfcase was successfully updated.' }
        format.json { render :show, status: :ok, location: @yfcase }
      else
        format.html { render :edit }
        format.json { render json: @yfcase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yfcases/1
  # DELETE /yfcases/1.json
  def destroy
    @yfcase = Yfcase.find(params[:id])
    @yfcase.destroy
    respond_to do |format|
      format.html { redirect_to yfcases_url, notice: 'Yfcase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def yfratingscale
    @yfcase = Yfcase.find(params[:id])
    respond_to do |format|
      format.html
      format.json
      format.pdf {render template:'yfcases/yfratingscale', pdf: 'Yfratingscale'}
    end
  end

  def deedtax
    @yfcase = Yfcase.find(params[:id])
    respond_to do |format|
      format.html
      format.json
      format.pdf {render template:'yfcases/deedtax', pdf: 'Deedtax'}
    end
  end

  def realestateregistration
    @yfcase = Yfcase.find(params[:id])
    respond_to do |format|
      format.html
      format.json
      format.pdf {render template:'yfcases/realestateregistration', pdf: 'Realestateregistration',orientation: 'Landscape'}
    end
  end

  def complaint
    @yfcase = Yfcase.find(params[:id])
    respond_to do |format|
      format.html
      format.json
      format.pdf {render template:'yfcases/complaint', pdf: 'Complaint'}
    end
  end
  
  def letter
    @yfcase = Yfcase.find(params[:id])
    respond_to do |format|
      format.html
      format.json
      format.pdf {render template:'yfcases/letter', pdf: 'Letter'}
    end    
  end
  
  def commonpropertydivision
    @yfcase = Yfcase.find(params[:id])
    respond_to do |format|
      format.html
      format.json
      format.pdf {render template:'yfcases/commonpropertydivision', pdf: 'Commonpropertydivision'}
    end    
  end

  def delete_subsigntruea
    @yfcase = Yfcase.find(params[:id])
    @subsigntruea_delete= @yfcase.subsigntrueas.first
    @subsigntruea_delete.destroy
    redirect_to @yfcase
  end

  def delete_subsigntrueb
    @yfcase = Yfcase.find(params[:id])
    @subsigntrueb_delete= @yfcase.subsigntruebs.first
    @subsigntrueb_delete.destroy
    redirect_to @yfcase
  end

  def delete_subsigntruec
    @yfcase = Yfcase.find(params[:id])
    @subsigntruec_delete= @yfcase.subsigntruecs.first
    @subsigntruec_delete.destroy
    redirect_to @yfcase
  end
  
  def sendmail
    ContactMailer.say_hello_to().deliver_now
    redirect_to @yfcase, notice: 'User was successfully created.'
  end


  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yfcase
      @yfcase = current_user.yfcases.find(params[:id])
    end

    def show_helper
      @yfcase = Yfcase.find(params[:id])
      # 地坪總面積 (平方公尺)
      @landtotalarea = @yfcase.lands.map{ |n| [n.land_area.to_f * (n.land_holding_point_personal.to_f / n.land_holding_point_all.to_f)] }.flatten.sum
      
      # 建坪
      
      if @yfcase.builds.where("build_type_use = ?","0公設").present?
        # 找到第一筆非公設(notPU)的個人持分(build_holding_point_personal)
        @notPU_HP_personal=@yfcase.builds.where.not("build_type_use = ?","0公設").first.build_holding_point_personal
        # 找到第一筆非公設(notPU)的個人持分(build_holding_point_all)
        @notPU_HP_all=@yfcase.builds.where.not("build_type_use = ?","0公設").first.build_holding_point_all
        # 建坪總面積 (平方公尺)-有公設 (計算"0公設"的總面積)
        @withBuildTotalArea = @yfcase.builds.where("build_type_use = ?","0公設").map { |n| [n.build_area.to_f * ((n.build_holding_point_personal.to_f * @notPU_HP_personal.to_f) / (n.build_holding_point_all.to_f * @notPU_HP_all.to_f))] }.flatten.sum 
      else
        @withBuildTotalArea = 0
      end
      
      if @yfcase.builds.where("build_type_use = ?","12增建(持分後坪數打對折)").count >0
        # 建坪總面積 (平方公尺)-有增建 (計算"12增建(持分後坪數打對折)"的總面積)
        @addBuildTotalArea = @yfcase.builds.where("build_type_use = ?","12增建(持分後坪數打對折)").map { |n| [n.build_area.to_f * ((n.build_holding_point_personal.to_f) / (n.build_holding_point_all.to_f))] }.flatten.sum * 0.5
      else
        @addBuildTotalArea = 0
      end
      
      if @yfcase.builds.where.not("build_type_use = ? OR build_type_use = ?", "0公設","12增建(持分後坪數打對折)").count > 0
        # 建坪總面積 (平方公尺)-無公設 (計算不含"0公設"及"12增建(持分後坪數打對折)"的總面積)
        @withoutBuildTotalArea = @yfcase.builds.where.not("build_type_use = ? OR build_type_use = ?", "0公設","12增建(持分後坪數打對折)").map { |n| [n.build_area.to_f * (n.build_holding_point_personal.to_f / n.build_holding_point_all.to_f)] }.flatten.sum 
      else
        @withoutBuildTotalArea = 0
      end 
      
      # 坪價(萬)
      @pingprice1 = @yfcase.floor_price_1.to_f / ((@withoutBuildTotalArea+@withBuildTotalArea+@addBuildTotalArea)*0.3025).to_f
      @pingprice2 = @yfcase.floor_price_2.to_f / ((@withoutBuildTotalArea+@withBuildTotalArea+@addBuildTotalArea)*0.3025).to_f
      @pingprice3 = @yfcase.floor_price_3.to_f / ((@withoutBuildTotalArea+@withBuildTotalArea+@addBuildTotalArea)*0.3025).to_f
      @pingprice4 = @yfcase.floor_price_4.to_f / ((@withoutBuildTotalArea+@withBuildTotalArea+@addBuildTotalArea)*0.3025).to_f

      # 時價(萬)

      marketpricecount = @yfcase.objectbuilds.count
      marketpricesum=@yfcase.objectbuilds.map { |n| [(testvalue(n.total_price.to_f / n.build_area.to_f ,n.plusa,n.plusb))] }.flatten
      @marketprice = marketpricesum.map!{|e| e.to_f}.sum.fdiv(marketpricesum.size)
      # respond_to do |format|
      # format.html
      # format.json
      # # format.pdf {render template:'yfcases/deedtax', pdf: 'Deedtax'}
      # end
    end

    def prepare_variable_for_index_template
        kk=true
        # keyword=案號篩選(case_number)
        # keyword2=判定篩選(final_decision)
        # person=人員篩選(user_id)
        # city=縣市篩選(country_id)
        # PostgreSQL的查詢方式 Yfcase.where( [ "cast(case_number as text) like ?", "%#{params[:keyword]}%"])
      
        if params[:keyword].present? && params[:keyword2].present? && params[:person].present? && params[:city].present?
          if params[:noworbefore].present?
            @yfcases = Yfcase.where( [ "cast(case_number as text) like ?", "%#{params[:keyword]}%"]).where( [ "cast(final_decision as text) like ?", "%#{params[:keyword2]}%"]).where( [ "cast(user_id as text) like ?", params[:person]]).where( [ "cast(country_id as text) like ?", params[:city]])
          else
            @yfcases = Yfcase.where(now_or_before: false).where( [ "cast(case_number as text) like ?", "%#{params[:keyword]}%"]).where( [ "cast(final_decision as text) like ?", "%#{params[:keyword2]}%"]).where( [ "cast(user_id as text) like ?", params[:person]]).where( [ "cast(country_id as text) like ?", params[:city]])
          end
        elsif params[:keyword].present? && params[:keyword2].present? && params[:person].present? && params[:city].blank?
          if params[:noworbefore].present?
            @yfcases = Yfcase.where( [ "cast(case_number as text) like ?", "%#{params[:keyword]}%"]).where( [ "cast(final_decision as text) like ?", "%#{params[:keyword2]}%"]).where( [ "cast(user_id as text) like ?", params[:person]])
          else
            @yfcases = Yfcase.where(now_or_before: false).where( [ "cast(case_number as text) like ?", "%#{params[:keyword]}%"]).where( [ "cast(final_decision as text) like ?", "%#{params[:keyword2]}%"]).where( [ "cast(user_id as text) like ?", params[:person]])
          end
        elsif params[:keyword].present? && params[:keyword2].present? && params[:person].blank? && params[:city].present?
          if params[:noworbefore].present?
            @yfcases = Yfcase.where( [ "cast(case_number as text) like ?", "%#{params[:keyword]}%"]).where( [ "cast(final_decision as text) like ?", "%#{params[:keyword2]}%"]).where( [ "cast(country_id as text) like ?", params[:city]])
          else
            @yfcases = Yfcase.where(now_or_before: false).where( [ "cast(case_number as text) like ?", "%#{params[:keyword]}%"]).where( [ "cast(final_decision as text) like ?", "%#{params[:keyword2]}%"]).where( [ "cast(country_id as text) like ?", params[:city]])
          end
        elsif params[:keyword].present? && params[:keyword2].present? && params[:person].blank? && params[:city].blank?
          if params[:noworbefore].present?
            @yfcases = Yfcase.where( [ "cast(case_number as text) like ?", "%#{params[:keyword]}%"]).where( [ "cast(final_decision as text) like ?", "%#{params[:keyword2]}%"])
          else
            @yfcases = Yfcase.where(now_or_before: false).where( [ "cast(case_number as text) like ?", "%#{params[:keyword]}%"]).where( [ "cast(final_decision as text) like ?", "%#{params[:keyword2]}%"])
          end
        elsif params[:keyword].present? && params[:keyword2].blank? && params[:person].present? && params[:city].present?
          if params[:noworbefore].present?
            @yfcases = Yfcase.where( [ "cast(case_number as text) like ?", "%#{params[:keyword]}%"]).where( [ "cast(user_id as text) like ?", params[:person]]).where( [ "cast(country_id as text) like ?", params[:city]])
          else
            @yfcases = Yfcase.where(now_or_before: false).where( [ "cast(case_number as text) like ?", "%#{params[:keyword]}%"]).where( [ "cast(user_id as text) like ?", params[:person]]).where( [ "cast(country_id as text) like ?", params[:city]])
          end
        elsif params[:keyword].present? && params[:keyword2].blank? && params[:person].present? && params[:city].blank?
          if params[:noworbefore].present?
            @yfcases = Yfcase.where( [ "cast(case_number as text) like ?", "%#{params[:keyword]}%"]).where( [ "cast(user_id as text) like ?", params[:person]])
          else
            @yfcases = Yfcase.where(now_or_before: false).where( [ "cast(case_number as text) like ?", "%#{params[:keyword]}%"]).where( [ "cast(user_id as text) like ?", params[:person]])
          end
        elsif params[:keyword].present? && params[:keyword2].blank? && params[:person].blank? && params[:city].present?
          if params[:noworbefore].present?
            @yfcases = Yfcase.where( [ "cast(case_number as text) like ?", "%#{params[:keyword]}%"]).where( [ "cast(country_id as text) like ?", params[:city]])
          else
            @yfcases = Yfcase.where(now_or_before: false).where( [ "cast(case_number as text) like ?", "%#{params[:keyword]}%"]).where( [ "cast(country_id as text) like ?", params[:city]])
          end
        elsif params[:keyword].present? && params[:keyword2].blank? && params[:person].blank? && params[:city].blank?
          if params[:noworbefore].present?
            @yfcases = Yfcase.where( [ "cast(case_number as text) like ?", "%#{params[:keyword]}%"])
          else
            @yfcases = Yfcase.where(now_or_before: false).where( [ "cast(case_number as text) like ?", "%#{params[:keyword]}%"])
          end
        elsif params[:keyword].blank? && params[:keyword2].present? && params[:person].present? && params[:city].present?
          if params[:noworbefore].present?
            @yfcases = Yfcase.where( [ "cast(final_decision as text) like ?", "%#{params[:keyword2]}%"]).where( [ "cast(user_id as text) like ?", params[:person]]).where( [ "cast(country_id as text) like ?", params[:city]])
          else
            @yfcases = Yfcase.where(now_or_before: false).where( [ "cast(final_decision as text) like ?", "%#{params[:keyword2]}%"]).where( [ "cast(user_id as text) like ?", params[:person]]).where( [ "cast(country_id as text) like ?", params[:city]])
          end
        elsif params[:keyword].blank? && params[:keyword2].present? && params[:person].present? && params[:city].blank?
          if params[:noworbefore].present?
            @yfcases = Yfcase.where( [ "cast(final_decision as text) like ?", "%#{params[:keyword2]}%"]).where( [ "cast(user_id as text) like ?", params[:person]])
          else
            @yfcases = Yfcase.where(now_or_before: false).where( [ "cast(final_decision as text) like ?", "%#{params[:keyword2]}%"]).where( [ "cast(user_id as text) like ?", params[:person]])
          end
        elsif params[:keyword].blank? && params[:keyword2].present? && params[:person].blank? && params[:city].present?
          if params[:noworbefore].present?
            @yfcases = Yfcase.where( [ "cast(final_decision as text) like ?", "%#{params[:keyword2]}%"]).where( [ "cast(country_id as text) like ?", params[:city]])
          else
            @yfcases = Yfcase.where(now_or_before: false).where( [ "cast(final_decision as text) like ?", "%#{params[:keyword2]}%"]).where( [ "cast(country_id as text) like ?", params[:city]])
          end
        elsif params[:keyword].blank? && params[:keyword2].present? && params[:person].blank? && params[:city].blank?
          if params[:noworbefore].present?
            @yfcases = Yfcase.where( [ "cast(final_decision as text) like ?", "%#{params[:keyword2]}%"])
          else
            @yfcases = Yfcase.where(now_or_before: false).where( [ "cast(final_decision as text) like ?", "%#{params[:keyword2]}%"])
          end
        elsif params[:keyword].blank? && params[:keyword2].blank? && params[:person].present? && params[:city].present?
          if params[:noworbefore].present?
            @yfcases = Yfcase.where( [ "cast(user_id as text) like ?", params[:person]]).where( [ "cast(country_id as text) like ?", params[:city]])
          else
            @yfcases = Yfcase.where(now_or_before: false).where( [ "cast(user_id as text) like ?", params[:person]]).where( [ "cast(country_id as text) like ?", params[:city]])
          end
        elsif params[:keyword].blank? && params[:keyword2].blank? && params[:person].present? && params[:city].blank?
          if params[:noworbefore].present?
            @yfcases = Yfcase.where( [ "cast(user_id as text) like ?", params[:person]])
          else
            @yfcases = Yfcase.where(now_or_before: false).where( [ "cast(user_id as text) like ?", params[:person]])
          end
        elsif params[:keyword].blank? && params[:keyword2].blank? && params[:person].blank? && params[:city].present?
          if params[:noworbefore].present?
            @yfcases = Yfcase.where( [ "cast(country_id as text) like ?", params[:city]])
          else
            @yfcases = Yfcase.where(now_or_before: false).where( [ "cast(country_id as text) like ?", params[:city]])
          end
        else 
          if params[:noworbefore].present?
            @yfcases = Yfcase.all
          else
            @yfcases = Yfcase.where(now_or_before: false)
          end
        end
        
        @yfcases = @yfcases.order("updated_at DESC").page(params[:page])
    end



    # Only allow a list of trusted parameters through.
    def yfcase_params
      params.require(:yfcase).permit(:case_number, :company, :adv_find_condition, :isMobileOrDesktop, :now_or_before, \
        :country_id, :township_id, :big_section, :small_section, \
        :other_address, :co_owner, \
        :auction_day_1,:auction_day_2,:auction_day_3,:auction_day_4, \
        :floor_price_1,:floor_price_2,:floor_price_3,:floor_price_4, \
        :click_1,:click_2,:click_3,:click_4, \
        :monitor_1,:monitor_2,:monitor_3,:monitor_4, \
        :margin_1,:margin_2,:margin_3,:margin_4,:auction_notes, \
        :first_survey_day,:other_survey_day, \
        :housingTax, :refereeFee, :agreementSplitUnsuccessfulDate, \
        :exhibit1, :exhibit2, :exhibit3, :exhibit4, :tabulationDate, \
        :foreclosure_announcement_title,:foreclosure_announcement_link,:foreclosure_announcement_988_link,:object_photo_title,:object_photo_link, \
        :net_price_registration_market_price_title,:net_price_registration_market_price_link,:net_price_registration_map_title,:net_price_registration_map_link,:net_price_registration_photo_title,:net_price_registration_photo_link, \
        :auction_record_title,:auction_record_link,:other_notes,:survey_resolution,:final_decision, \
        :occupy,:register,:parking_space,:management_fee,:rent,:leak,:easy_parking,:railway,:vegetable_market,:supermarket,:school,:park,:post_office,:main_road,:water_and_power_failure,:good_vision, :final_decision_date, \
        :active_result,:active_result_date,:priority_purchase_result,:target_number, \
        :realestateregistrationRealEstateAgent, :complaintLitigationAgent, \
        :debtorName, :debtorIdentitycard, :debtorBirthday, :debtorLocallphone, :debtorMobilelphone, :debtorNotes, :debtorCountry, :debtorTownship, :debtorVillage, :debtorNeighbor, :debtorStreet, :debtorSection, :debtorLane, :debtorAlley, :debtorNumber, :debtorFloor, :debtorBuildholdingpointperson, :debtorBuildholdingpointall, :debtorLandholdingpointperson, :debtorLandholdingpointall, \
        :creditorName, :creditorIdentitycard, :creditorBirthday, :creditorLocallphone, :creditorMobilelphone, :creditorNotes, :creditorCountry, :creditorTownship, :creditorVillage, :creditorNeighbor, :creditorStreet, :creditorSection, :creditorLane, :creditorAlley, :creditorNumber, :creditorFloor, :creditorBuildholdingpointperson, :creditorBuildholdingpointall, :creditorLandholdingpointperson, :creditorLandholdingpointall, \
        :deedtaxDateOfDeed, :deedtaxDeclarationDate, :deedtaxTransferPrice, :deedtaxChargeDaffairesTaxDeclarant, :deedtaxDebtTaxPaymentReceiptMethod, :deedtaxClosedNewsletter, :deedtaxUnderreportedDays, :deedtaxRemark, \
        :cause_data,:application_for_registration,:reason_for_registration,:marking_and_application_rights,:attached_Document_Content_1,:number_of_attached_quantity_1,:attached_Document_Content_2,:number_of_attached_quantity_2,:attached_Document_Content_3,:number_of_attached_quantity_3,:registration_notes, \
        :deedtaxBuildingTransferLevel1, :deedtaxBuildingTransferLevel2, :deedtaxBuildingTransferLevel3, :deedtaxBuildingTransferLevel4, :deedtaxBuildingTransferLevel5, :deedtaxBuildingTransferLevel6, :deedtaxBuildingTransferLevel7, \
        :deedtaxBuildingTransferStructure1, :deedtaxBuildingTransferStructure2, :deedtaxBuildingTransferStructure3, :deedtaxBuildingTransferStructure4, :deedtaxBuildingTransferStructure5, :deedtaxBuildingTransferStructure6, :deedtaxBuildingTransferStructure7, \
        :deedtaxBuildingTransferArea1, :deedtaxBuildingTransferArea2, :deedtaxBuildingTransferArea3, :deedtaxBuildingTransferArea4, :deedtaxBuildingTransferArea5, :deedtaxBuildingTransferArea6, :deedtaxBuildingTransferArea7, \
        :deedtaxBuildingTransferPublicBuildingNumber1, :deedtaxBuildingTransferPublicBuildingNumber2, :deedtaxBuildingTransferPublicBuildingNumber3, :deedtaxBuildingTransferPublicBuildingNumber4, :deedtaxBuildingTransferPublicBuildingNumber5, \
        :deedtaxBuildingTransferPublicArea1, :deedtaxBuildingTransferPublicArea2, :deedtaxBuildingTransferPublicArea3, :deedtaxBuildingTransferPublicArea4, :deedtaxBuildingTransferPublicArea5, \
        :houseTaxNumberCountry1,:houseTaxNumberCountry2,:houseTaxNumberTownship1,:houseTaxNumberTownship2,:houseTaxNumberBuilding1,:houseTaxNumberBuilding2,:houseTaxNumberBuilding3,:houseTaxNumberBuilding4,:houseTaxNumberHouseHold1,:houseTaxNumberHouseHold2,:houseTaxNumberHouseHold3, \
        :deedtaxBuildingTransferPublicHoldings1, :deedtaxBuildingTransferPublicHoldings2, :deedtaxBuildingTransferPublicHoldings3, :deedtaxBuildingTransferPublicHoldings4, :deedtaxBuildingTransferPublicHoldings5, :newspaperAttached, \
        personnals_attributes: [:id, :is_debtor, :is_creditor, :is_land_owner, :is_build_owner,:is_original_owner, :is_new_owner, :is_deed_tax_agent, :is_tax_agent, :name, :identity_card, :birthday,:person_country , \
        :person_township ,:person_village ,:person_neighbor ,:person_street ,:person_section ,:person_lane ,:person_alley ,:person_number ,:person_floor , :local_phone, :mobile_phone, :personnal_notes,:identity_code, :public_or_private, :right_share_person, :right_share_all,:personnalBuildHoldingPointPerson,:personnalBuildHoldingPointAll,:ownerFullAddress , :_destroy], \
        lands_attributes: [:id, :land_number, :land_url, :land_area, :land_holding_point_personal, :land_holding_point_all ,:landRemarks , :landPresentValue, :landTotalArea, :landAreaWidth, :landAreaDepth, :_destroy], \
        objectbuilds_attributes: [:id, :address, :total_price, :build_area, :house_age, :floor_height, :surveyora, :surveyorb, :plusa, :plusb,:plusa_reason,:plusb_reason,:objectbuild_status, :objectbuild_url, :objectBuildDealYear, :objectBuildDealMonth, :_destroy], \
        builds_attributes: [:id, :build_number,:build_url,:build_area, :build_holding_point_personal, :build_holding_point_all, :build_type_use,:use_partition, :_destroy, \
        :buildCity, :buildTownship, :buildArea, :buildStreet, :buildRoad, :buildSegment, :buildLane, :buildDo, :buildNumber, :buildFloor, :buildBigSegment, :buildSmallSegment, :buildLot, :buildLevel1, :buildLevel2, :buildLevel3, :buildLevel4, :buildOther1, :buildOther2, :buildUse, :buildScopeOfArea, :buildScopeOfRights, :buildTotalArea, :buildRemarks, :buildLandNumber, \
        :mainBuildLevel1,:mainBuildLevel2, :mainBuildLevel3, :mainBuildLevel4, :mainBuildLevel5, :mainBuildConstruction1, :mainBuildConstruction2, :mainBuildConstruction3, :mainBuildConstruction4, :mainBuildConstruction5, :mainBuildArea1, :mainBuildArea2, :mainBuildArea3, :mainBuildArea4, :mainBuildArea5, :publicBuildNumber1, :publicBuildNumber2, :publicBuildNumber3, :publicBuildNumber4, \
        :publicBuildArea1, :publicBuildArea2, :publicBuildArea3, :publicBuildArea4, :publicBuildHP1, :publicBuildHP2, :publicBuildHP3, :publicBuildHP4, :subBuildUse1, :subBuildUse2, :subBuildUse3, :subBuildArea1, :subBuildArea2, :subBuildArea3,] )
    end
end
