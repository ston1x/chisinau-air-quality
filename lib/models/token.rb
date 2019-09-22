class Token
  include Mongoid::Document
  include Mongoid::Timestamps

  field :key, type: String
  field :active, type: Boolean, default: true
end
