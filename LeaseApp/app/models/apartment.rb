class Apartment
  include Mongoid::Document
  field :floor, type: Integer
  field :num_baths, type: Float
  field :descrip, type: String
  field :is_occupied, type: Mongoid::Boolean, default: false

  has_many :people
end
