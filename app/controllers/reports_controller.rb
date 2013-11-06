# @author Daniel Lekic and Hayden Bleasel
class ReportsController < ApplicationController

	# GET /reports
	# Access level: Administrator
	def index
		if current_user.try(:admin?)
			@reports = Report.all
		else
			flash[:alert] = "Sorry, no can do. Come back when you're a system administrator!"
			redirect_to index_path
		end
	end

	# GET /reports/new
	# Access level: Administrator
	def new
		if current_user.try(:admin?)
			@report = Report.new
		else
			flash[:alert] = "Sorry, no can do. Come back when you're a system administrator!"
			redirect_to index_path
		end
	end

	# PUT /reports/new
	# Access level: Administrator
	def create
		@report = Report.new(report_params)
		@report.user = current_user
		if @report.areas.empty?
			@report.areas = Area.all
		end
		if @report.save
			flash[:notice] = "Report successfully created."
			redirect_to reports_path
		else
			render 'new'
		end
	end

	# GET /reports/:id
	# Access level: Administrator
	def show
		if current_user.try(:admin?)
			@report = Report.find(params[:id])
			@types = PestType.all
			@sightings = Sighting.find(:all, :conditions => ["created_at between ? and ?", @report.start_date-1, @report.end_date+1])
			@final = []
			@sightings.each do |sighting|
				@report.area_ids.each do |area|
					@final << sighting if sighting.park.area_id == area
				end
			end
		else
			flash[:alert] = "Sorry, no can do. Come back when you're a system administrator!"
			redirect_to index_path
		end
	end

	# PUT /reports/:id
	# Access level: Administrator
	def update
		@report = Report.find(params[:id])
		if @report.update(params[:report].permit(:name, :start_date, :end_date, {:area_ids => []}))
			flash[:notice] = "Report Successfuly Updated."
			redirect_to reports_path
		else
			render 'edit'
		end
	end

	# DELETE /reports/:id
	# Access level: Administrator
	def destroy
		if current_user.try(:admin?)
			@report = Report.find(params[:id])
			@report.destroy
			flash[:notice] = "Yay - report successfully deleted!"
		else
			flash[:alert] = "Sorry, no can do. Come back when you're a system administrator!"
		end
		redirect_to index_path
	end

	private

		# Permitted parameters when creating a report
		def report_params
			params.require(:report).permit(:name, :start_date, :end_date, {:area_ids => []})
		end

end