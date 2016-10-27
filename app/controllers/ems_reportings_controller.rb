class EmsReportingsController < InheritedResources::Base

  private

    def ems_reporting_params
      params.require(:ems_reporting).permit(:title, :body)
    end
end

