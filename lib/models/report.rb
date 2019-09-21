class Report
  include Mongoid::Document

  field :stinky, type: Boolean
  field :location, type: String
end
