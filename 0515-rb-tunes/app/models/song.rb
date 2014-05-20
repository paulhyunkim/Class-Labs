class Song
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String

  belongs_to :artist
  belongs_to :album
  has_and_belongs_to_many :playlists
end
