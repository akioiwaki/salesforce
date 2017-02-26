class HogesController < InheritedResources::Base

  private

    def hoge_params
      params.require(:hoge).permit(:name, :age, :avatar)
    end
end

