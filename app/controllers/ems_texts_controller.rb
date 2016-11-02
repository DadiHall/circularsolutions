class EmsTextsController < InheritedResources::Base

  private

    def ems_text_params
      params.require(:ems_text).permit(:body)
    end
end

