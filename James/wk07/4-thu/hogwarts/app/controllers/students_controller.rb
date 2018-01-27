class StudentsController < ApplicationController
	include StudentHelper

	def index
		@students = Student.all.order(:id)
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
			redirect_to '/students'
		else
			render :new
		end
	end
end
