module ApplicationHelper
	# # 平方公尺換算成坪數
	# def squaremetertoping(meter)
	# 	result=meter * 0.3025
	# 	return result
	# end

	# 計算持分
	def holdingpoint(arg1,arg2)
		result = arg1.to_f / arg2.to_f
		return result
	end

	# 計算面積 ( 面積 , 持分[個人] , 持分[所有] , 倍數[平方公尺=0.3025坪] ) 
	def area(area,holdingpointperson,holdingpointall,multiple)
		result = area.to_f * multiple * (holdingpointperson.to_f / holdingpointall.to_f)
		return result 
	end



	# 計算物件坪價 ( 底價 , 建坪[坪] , 持分[個人] , 持分[所有] ) 
	def unitprice(floorprice,buildarea,buildholdingpointperson,buildholdingpointall)
		result= floorprice / (buildarea * 0.3025*(buildholdingpointperson.to_f / buildholdingpointall.to_f))
		return result
	end
	

	# 計算時價( 總價 , 坪數[坪] , 加成A , 加成B , 筆數 )
	def marketprice(object,totalprice,buildarea,plusa,plusb)
		# 計算坪價
		unitprice = totalprice.to_f / buildarea.to_f
		plus = (plusa.to_f + plusb.to_f) / 2
		return unitprice * plus
	end

	# 計算建議加價費用 ( 底價 , 點閱 , 監控  ) 
	# 1.點閱數先減100，再除了100，取無條件進入的絕對值
	# 2.監控數*3%
	# 3.第1項*第2項，計算後若是超過15%，以上限值15%為主
	def suggestedincrease2(floorprice,click,monitor)
		result=((((click.to_f-100)/100).abs.ceil)*(monitor.to_f/100*3))
		
		if result > 0.15
			return  "(100% + "+"#{0.15*100}%)"+"\n"+"#{currency_helper(floorprice*(1+0.15),0)}"
		else
			return "(100% + "+"#{result*100}%)"+"\n"+"#{currency_helper(floorprice*(1+result),0)}"
		end
	end	

	# 加價 改成 一點3%, 最高5點。(點數=(點閱/100)+(監控))
	# 1.點閱數除了100，取無條件進入的絕對值
	# 2.監控數
	# 3.第1項+第2項，再乘以3%，計算後若是超過15%，以上限值15%為主
	def suggestedincrease(floorprice,click,monitor)
		result=((click.to_f/100).ceil+monitor.to_f)*0.03
		
		overFifteen="<small>(100% + #{0.15*100}%)</small><br>#{currency_helper(floorprice*(1+0.15),0)}"
		notOverFifteen="<small>(100% + #{result*100}%)</small><br>#{currency_helper(floorprice*(1+result),0)}"
		
		if result > 0.15
			return overFifteen.html_safe
		else
			return notOverFifteen.html_safe
		end
	end		
	
	# 加偠後CP值判定
	def suggestedincreaseJudgment(floorprice,click,monitor)
		result=((click.to_f/100).ceil+monitor.to_f)*0.03
		
		if result > 0.15
			return 1.15
		else
			return 1+result
		end
	end		
	
	
	# 設定貨幣格式helper
	def currency_helper(price,precision)
		result=number_to_currency(price, unit: "", precision: precision )
		return result
	end

	#在網址加上https://前綴字
	def add_https(str)
		if str.blank?
			return ""
		elsif str[0..3] != 'http'
			return "https://"+str
		else
			return str
		end
	end


	def testvalue(x,a,b)
		if a == nil && b == nil
			x * 1
		elsif b == nil
			x * a
		elsif a == nil
			x * b
		else
			x * ((a+b)/2)
		end
	end
	
	# 代出輸入底價的最大值
	def maxvalue(a,b,c,d)
		if a > b && a > c && a > d
			return a
		elsif b > a && b > c && b > d
			return b
		elsif c > a && c > b && c > d
			return c
		elsif d > a && d > b && d > c
			return d
		else
			return 0
		end
	end



	# def all_tags
	#   tags.map(&:totalpriced)
	# end

	# def averagebetween(arga,argb)
	# 	return (arga+argb) / 2
	# end

	# def buildplus(objectbuild,buildarea,plusa,plusb)
	# 	plus = ( plusa + plusb ) / 2
	# 	result = objectbuild / buildarea * plus
	# 	return result
	# end

	# def nowprice(objecta,objectb)
	# 	result= ( objecta + objectb ) / 2 * 10000
	# 	return result
	# end

	# # 在建物查檢表的頁面(template)以yesno的方式來呈現
	# def buttonyes
	# 	data = "
	# 		<div class='onoffswitch'>
	# 		    <input type='checkbox' name='onoffswitch' class='onoffswitch-checkbox' id='myonoffswitch' checked>
	# 		    <label class='onoffswitch-label' for='myonoffswitch'>
	# 		        <span class='onoffswitch-inner'></span>
	# 		        <span class='onoffswitch-switch'></span>
	# 		    </label>
	# 		</div>
	# 	"
	# 	data.html_safe
	# end

	def buttonyeson(bool)
		if bool == true
			data = "
				<span style='color: Blue;'><i class='fa fa-check-circle fa-2x'></i></span>
				<span style='color: gray;'><i class='fa fa-circle fa-2x'></i></span>
			"
			data.html_safe
		else
			data = "
				<span style='color: gray;'><i class='fa fa-circle fa-2x'></i></span>
				<span style='color: Red;'><i class='fa fa-times-circle fa-2x'></i></span>
			"
			data.html_safe
		end
	end

	def address(country,township,village,neighbor,street,section,lane,alley,number,floor)
		return "#{country}#{township}#{village}#{neighbor}#{street}#{section}#{lane}#{alley}#{number}#{floor}"
	end
	
	def isBlank(object)
		return object.blank? ? "" : object
	end
	
	def numberToChinese(number)
		numberString = number.to_s
		chinese = "零一二三四五六七八九"
		arabic = "0123456789"
		if numberString[-4].present? 
		 value =numberString[-4].tr(arabic,chinese)+"千"+ numberString[-3].tr(arabic,chinese)+"百"+ (numberString[-2] == "1" ? "十" : numberString[-2].tr(arabic,chinese)+"十")+ numberString[-1].tr(arabic,chinese)
		elsif numberString[-3].present? 
		 value = numberString[-3].tr(arabic,chinese)+"百"+ (numberString[-2] == "1" ? "十" : numberString[-2].tr(arabic,chinese)+"十")+ numberString[-1].tr(arabic,chinese)
		elsif numberString[-2].present? 
		 value = (numberString[-2] == "1" ? "十" : numberString[-2].tr(arabic,chinese)+"十")+ numberString[-1].tr(arabic,chinese)
		else
		 value = numberString[-1].tr(arabic,chinese)
		end
		return value
	end
	
	# 最大公因數
	def gcd(a, b)
	  b.zero? ? a : gcd(b, a%b)
	end
	# 最小公倍數
	def lcm(a, b)
	  result=a*b/gcd(a,b)
	  return result
	end
end
