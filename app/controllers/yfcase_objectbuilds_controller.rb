class YfcaseObjectbuildsController < ApplicationController
	before_action :set_plus
	def editplusratea
		@plusa = @yfcase.objectbuilds.find(params[:id])
	end

	def updateplusratea
		@plusa = @yfcase.objectbuilds.find(params[:id])
		if @plusa.update(plusa_params)
			redirect_to yfcase_path( @yfcase )
		else
			render :action => "editplus"
		end
	end

	def deleteplusratea
		@plusa = @yfcase.objectbuilds.find(params[:id])
		@plusa.update(surveyora: nil, plusa: nil,plusa_reason: nil)
		redirect_to yfcase_path( @yfcase )
	end

	def editplusrateb
		@plusb = @yfcase.objectbuilds.find(params[:id])
	end

	def updateplusrateb
		@plusb = @yfcase.objectbuilds.find(params[:id])
		if @plusb.update(plusa_params)
			redirect_to yfcase_path( @yfcase )
		else
			render :action => "editplusrateb"
		end
	end
	
	def deleteplusrateb
		@plusb = @yfcase.objectbuilds.find(params[:id])
		@plusb.update(surveyorb: nil, plusb: nil, plusb_reason: nil)
		redirect_to yfcase_path( @yfcase )
	end
	
	def deleteplusrateall
		@plusall = @yfcase.objectbuilds.find(params[:id])
		@plusall.update(surveyora: nil, plusa: nil, plusa_reason: nil)
		@plusall.update(surveyorb: nil, plusb: nil, plusb_reason: nil)
		redirect_to yfcase_path( @yfcase )		
	end
	
	protected
	def set_plus
		@yfcase=Yfcase.find(params[:yfcase_id])
	end

	def plusa_params
		params.require(:objectbuild).permit(:plusa,:plusb,:surveyora,:surveyorb,:plusa_reason,:plusb_reason)
	end
end
