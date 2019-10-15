require 'rails_helper'
RSpec.describe Api::V1::ReportsController do
  it 'gets all reports' do
    get :index
  end
end
