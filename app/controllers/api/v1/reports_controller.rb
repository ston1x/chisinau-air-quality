class Api::V1::ReportsController < Api::V1::BaseController
  def index
    render json: { message: 'ok' }
  end

  def create; end
end
