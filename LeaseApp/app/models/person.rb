class Person
  include Mongoid::Document
  field :fname, type: String, default: "John"
  field :lname, type: String, default: "Doe"
  field :gender, type: String
  field :birth_date, type: Date
  field :has_pets, type: Mongoid::Boolean, default: false
  belongs_to :apartment
end
