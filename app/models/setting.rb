class Setting
  include Mongoid::Document
  field :name, type: String
  field :value, type: String
  field :value-type, type: String
  field :description, type: String
end
