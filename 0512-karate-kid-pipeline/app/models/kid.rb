class Kid
  include Mongoid::Document
  field :first_name, type: String
  field :last_name, type: String
  field :birthday, type: String
  field :belt_color, type: String
  field :dojo, type: String
  field :signature_move, type: String
end
