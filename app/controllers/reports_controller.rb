class ReportsController < ApplicationController
  def index
    @reports = Report.all.desc('created_at').limit(20)
  end
end
