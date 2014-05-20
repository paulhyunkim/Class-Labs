class Dragon
  include Mongoid::Document
  field :name, type: String
  field :size, type: String
  field :color, type: String
  field :age, type: Integer
  field :is_firebreathing, type: Boolean

  belongs_to :user
end
