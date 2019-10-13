class ReportsController < ApplicationController
  def index
    @report = Report.new
    @reports = Report.all.desc('created_at').limit(20)
    @neighbourhoods = Hash[%w[Botanica Buiucani Centru Râșcani Ciocana].zip(Report::NEIGHBOURHOODS)]
  end

  def create
    return if (Time.now - Report.last.created_at).to_i < 5 # stupid temporary attack resistance

    Report.create permitted_params
    redirect_to thank_you_path
  end

  def thank_you; end

  private

  def permitted_params
    params.require(:report).permit(:stinky, :location)
  end
end
