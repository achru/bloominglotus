require 'rails_helper'

RSpec.describe "schedules/index", type: :view do
  before(:each) do
    assign(:schedules, [
      Schedule.create!(
        :room => nil
      ),
      Schedule.create!(
        :room => nil
      )
    ])
  end

  it "renders a list of schedules" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
