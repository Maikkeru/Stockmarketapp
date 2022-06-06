class HomeController < ApplicationController
  
   @api = StockQuote::Stock.new(api_key: "pk_153e93f4bce64c3d87e7d4d3510153ed")
  def index
    if params[:ticker] == ""
      @nothing = "Please enter a ticker Symbol"
    elsif params[:ticker]
      begin
        @stock = StockQuote::Stock.quote(params[:ticker])
      rescue
        @stock == 'Unknown symbol'
      ensure
        @error = "Please enter a valid stock ticker"
      end
    end
  
     
    

 end

  def about
  end

end





    