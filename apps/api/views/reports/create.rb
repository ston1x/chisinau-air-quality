require 'json'

module Api::Views::Reports
  class Create
    include Api::View
    layout false

    def render
      _raw JSON.dump(speakers.map{ |speaker| speaker.to_h })
    end
  end
end
