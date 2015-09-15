class PagesController < ApplicationController

	def index
		@products = Product.all
	end


	private

def csv_import
	 require 'csv'

csv_text = File.read('data.csv')
csv = CSV.parse(csv_text, :headers => false)
 csv.each do |row|
     Product.create!(price: row[0], category: row[1], image: row[2])  
     end
 end
end
