class FormattersController < ApplicationController

  def new
    @formatter = Formatter.new
  end

  def create
    @formatter = Formatter.create(formatter_params)
    redirect_to new_formatter_path
  end

  private

    def formatter_params
      params.require(:formatter).permit(:content, :numbered, :style)
    end

end
