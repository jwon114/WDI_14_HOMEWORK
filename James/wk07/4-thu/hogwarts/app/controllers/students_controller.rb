class StudentsController < ApplicationController

	def index
		@students = Student.all
	end

	def show
		@student = Student.find(params[:id])
	end

	def create
		new_student = Student.new
		new_student.name = params[:first_name] + " " + params[:last_name]
		new_student.house_id = sorting_hat
		new_student.img_url = params[:img_url]
		
		if new_student.save
			redirect_to '/'
		else
			render :new
		end
	end

	def sorting_hat
		random = rand(0..3)
		houses = ["Gryffindor", "Hufflepuff", "Ravenclaw", "Slytherin"]
		return House.where(name: houses[random]).first.id
	end

end
