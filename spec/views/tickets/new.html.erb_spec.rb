require 'rails_helper'

RSpec.describe "tickets/new", type: :view do
  before(:each) do
    assign(:ticket, Ticket.new(
      :name => "MyString",
      :entries => 1,
      :unlimited => false,
      :student => nil
    ))
  end

  it "renders new ticket form" do
    render

    assert_select "form[action=?][method=?]", tickets_path, "post" do

      assert_select "input#ticket_name[name=?]", "ticket[name]"

      assert_select "input#ticket_entries[name=?]", "ticket[entries]"

      assert_select "input#ticket_unlimited[name=?]", "ticket[unlimited]"

      assert_select "input#ticket_student_id[name=?]", "ticket[student_id]"
    end
  end
end
