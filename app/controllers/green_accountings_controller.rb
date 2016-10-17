class GreenAccountingsController < InheritedResources::Base

  private

    def green_accounting_params
      params.require(:green_accounting).permit(:title, :body, :image)
    end
end

