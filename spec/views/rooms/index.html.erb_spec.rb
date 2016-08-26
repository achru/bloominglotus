require 'rails_helper'

RSpec.describe "rooms/index", type: :view do
  before(:each) do
    assign(:rooms, [
      Room.create!(
        :user => nil,
        :name => "Name"
      ),
      Room.create!(
        :user => nil,
        :name => "Name"
      )
    ])
  end

  it "renders a list of rooms" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
