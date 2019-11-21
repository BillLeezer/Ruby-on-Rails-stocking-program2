# app/controllers/home_controller.rb


class HomeController < ApplicationController
  def index
  	 @api = StockQuote::Stock.new(api_key: 'pk_b5e10db893cf4535989ff6874cf01189')
  	# <% StockQuote::Stock.new(api_key: 'pk_b5e10db893cf4535989ff6874cf01189') %>
	if params[:ticker] == ""
		@nothing = "*Enter a stock symbol*"
	elsif params[:ticker]
	  @stock = StockQuote::Stock.quote(params[:ticker]) 
	  if !@stock 
	  		 @error = "Stock symbol do not exist!"
	  end	
	end
  end

  def about
  end
  
end
