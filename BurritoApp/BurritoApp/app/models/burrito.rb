class Burrito
  include Mongoid::Document
  field :rice, type: Boolean
  field :beans, type: Mongoid::Boolean
  field :meat, type: String
  field :extras, type: String

  belongs_to :order
end
