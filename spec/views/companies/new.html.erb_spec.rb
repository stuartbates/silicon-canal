require 'spec_helper'

describe "companies/new" do
  before(:each) do
    assign(:company, stub_model(Company,
      :name => "MyString",
      :description => "MyText",
      :url => "MyString",
      :twitter => "MyString",
      :category_id => 1,
      :tags => "MyString",
      :crunchbase => "MyString",
      :address => "MyText"
    ).as_new_record)
  end

  it "renders new company form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", companies_path, "post" do
      assert_select "input#company_name[name=?]", "company[name]"
      assert_select "textarea#company_description[name=?]", "company[description]"
      assert_select "input#company_url[name=?]", "company[url]"
      assert_select "input#company_twitter[name=?]", "company[twitter]"
      assert_select "input#company_category_id[name=?]", "company[category_id]"
      assert_select "input#company_tags[name=?]", "company[tags]"
      assert_select "input#company_crunchbase[name=?]", "company[crunchbase]"
      assert_select "textarea#company_address[name=?]", "company[address]"
    end
  end
end