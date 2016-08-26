require 'rails_helper'

RSpec.describe "tickets/index", type: :view do
  before(:each) do
    assign(:tickets, [
      Ticket.create!(
        :name => "Name",
        :entries => 2,
        :unlimited => false,
        :student => nil
      ),
      Ticket.create!(
        :name => "Name",
        :entries => 2,
        :unlimited => false,
        :student => nil
      )
    ])
  end

  it "renders a list of tickets" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
