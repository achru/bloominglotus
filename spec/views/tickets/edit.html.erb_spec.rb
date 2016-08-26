require 'rails_helper'

RSpec.describe "tickets/edit", type: :view do
  before(:each) do
    @ticket = assign(:ticket, Ticket.create!(
      :name => "MyString",
      :entries => 1,
      :unlimited => false,
      :student => nil
    ))
  end

  it "renders the edit ticket form" do
    render

    assert_select "form[action=?][method=?]", ticket_path(@ticket), "post" do

      assert_select "input#ticket_name[name=?]", "ticket[name]"

      assert_select "input#ticket_entries[name=?]", "ticket[entries]"

      assert_select "input#ticket_unlimited[name=?]", "ticket[unlimited]"

      assert_select "input#ticket_student_id[name=?]", "ticket[student_id]"
    end
  end
end
