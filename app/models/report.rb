class Report
  include Mongoid::Document
  include Mongoid::Timestamps

  NEIGHBOURHOODS = %w[botanica buiucani centru rascani ciocana].freeze
  NEIGHBOURHOODS.each do |n|
    const_set(n.upcase, n)
  end

  field :stinky, type: Boolean
  field :location, type: String
end
