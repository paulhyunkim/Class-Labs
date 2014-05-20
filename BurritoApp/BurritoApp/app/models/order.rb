class Order
  include Mongoid::Document
  field :name, type: String
  field :time, type: Time

  has_many :burritos
end
