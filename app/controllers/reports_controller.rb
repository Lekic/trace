class ReportsController < ApplicationController
	def index
	    if current_user.try(:admin?)
			@reports = Report.all
	    else
			flash[:alert] = "Sorry, no can do. Come back when you're a system administrator!"
			redirect_to index_path
	    end
	end

	def new
		@report = Report.new
	end

	def create
		@report = Report.new(report_params)
		@report.user = current_user
    	if @report.save
    		flash[:notice] = "Report successfully created."
			redirect_to @report
		else
			render 'new'
		end
	end

	def show
		@report = Report.find(params[:id])
		@sightings = Sighting.find(:all, :conditions => ["created_at between ? and ?",
         @report.start_date-1, @report.end_date+1])
		#@final = @sightings.find_by 
		
	end

	def edit
		@report = Report.find(params[:id])
	end

	def update
    	@report = Report.find(params[:id])
		if @report.update(params[:report].permit(:start_date, :end_date, {:area_ids => []}))
			redirect_to @report
		else
			render 'edit'
		end
	end

	def destroy
		@report = Report.find(params[:id])
		@report.destroy

		redirect_to reports_path
	end

	private
      def report_params
        params.require(:report).permit(:start_date, :end_date, {:area_ids => []})
      end
end
