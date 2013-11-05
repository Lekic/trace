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
    if @report.save	
			redirect_to @report
		else
			render 'new'
		end
	end

	def show
		@report = Report.find(params[:id])
	end

	def edit
		@report = report_params.find(params[:id])
	end

	def update
    @report = Report.find(params[:id])

		if @report.update(params[:report].permit(:date_created))
			redirect_to @report
		else
			render 'edit'
		end
	end

	def destroy
		@report = Report.find(params[:id])
		@report.destroy

		redirect_to reports_path #check if you can reuse code
	end

	private
      def report_params
        params.require(:report).permit(:date_created) #change params
      end
end
