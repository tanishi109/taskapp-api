class Setting
  include Mongoid::Document
  field :name, type: String
  field :value, type: String
<<<<<<< HEAD
  field :valueType, type: String
=======
  field :value-type, type: String
>>>>>>> 000baa60a10b38ed1fee8819ef98ff820f165a41
  field :description, type: String
end
