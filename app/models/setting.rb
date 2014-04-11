class Setting
  include Mongoid::Document
  field :name, type: String
  field :value, type: String
  field :valueType, type: String
  field :description, type: String
end
