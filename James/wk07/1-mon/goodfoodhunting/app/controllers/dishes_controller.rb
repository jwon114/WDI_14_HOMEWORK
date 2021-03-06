class DishesController < ApplicationController
	def index
		@dishes = Dish.all
	end

	def new

	end

	def create
		new_dish = Dish.new
		new_dish.name = params[:dish_name]
		new_dish.image_url = params[:image_url]
		new_dish.save

		redirect_to '/dishes'
	end

	def show
		@dish = Dish.find_by(id: params[:id])
		if @dish == nil	
			@error = "Couldn't find dish"
		end
		# render :show # dont have to to have this as it has the same name in the views file
	end

	def update
		dish = Dish.find(params[:id])
		dish.name = params[:new_name]
		dish.image_url = params[:new_image_url]
		dish.save

		redirect_to '/dishes'
	end

	def destroy
		@dish = Dish.find(params[:id])
		if @dish.destroy
			redirect_to '/dishes'
		else
			render :show
		end
	end

end
