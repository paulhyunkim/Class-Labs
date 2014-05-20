class Karate
  include Mongoid::Document
  field :tournament, type: String
  field :location, type: String
  field :date, type: String
end
