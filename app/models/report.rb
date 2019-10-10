class Report
  include Mongoid::Document
  include Mongoid::Timestamps

  field :stinky, type: Boolean
  field :location, type: String
end
