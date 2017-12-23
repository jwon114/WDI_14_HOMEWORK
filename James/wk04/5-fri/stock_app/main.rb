require "sinatra"
require "sinatra/reloader"
require "stock_quote"
require "pry"

# stock symbols to test: msft, goog, apple, fb

get "/" do
	stock_symbol = params[:stock]
	stock_details = StockQuote::Stock.quote(stock_symbol)
	@stock_price = stock_details.l
	@stock_name = stock_details.name
	@stock_change = stock_details.c
	@summary = stock_details.summary[0]["overview"]
	@stock_price_52_high = stock_details.hi52 
	@stock_price_52_low = stock_details.lo52
	erb(:index)
	# binding.pry
end

get "/about" do
	erb(:about)
end
