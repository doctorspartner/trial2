require 'spec_helper'

describe "notes/new" do
  before(:each) do
    assign(:note, stub_model(Note,
      :note => "MyText",
      :contact => nil,
      :user => nil
    ).as_new_record)
  end

  it "renders new note form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", notes_path, "post" do
      assert_select "textarea#note_note[name=?]", "note[note]"
      assert_select "input#note_contact[name=?]", "note[contact]"
      assert_select "input#note_user[name=?]", "note[user]"
    end
  end
end
