require 'json'

module Api::Views::Reports
  class Create
    include Api::View
    layout false

    def render
      binding.pry
      report.to_json
    end
  end
end
