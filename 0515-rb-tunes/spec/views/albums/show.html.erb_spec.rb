require 'spec_helper'

describe "albums/show" do
  before(:each) do
    @album = assign(:album, stub_model(Album,
      :name => "Name",
      :platinum => false
    ))
    @potential_songs = assign(:potential_songs, [
      stub_model(Song,
        :title => "Name"
      ),
      stub_model(Artist,
        :title => "Name"
      )
    ])
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/No/)
  end
end
