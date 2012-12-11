require 'spec_helper'

describe "recipes/index" do
  before(:each) do
    assign(:recipes, [
      stub_model(Recipe,
        :name => "Name",
        :ingredients => "Ingredients",
        :servings => 1,
        :author => "Author",
        :preparation => "Preparation"
      ),
      stub_model(Recipe,
        :name => "Name",
        :ingredients => "Ingredients",
        :servings => 1,
        :author => "Author",
        :preparation => "Preparation"
      )
    ])
  end

  it "renders a list of recipes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Ingredients".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "Preparation".to_s, :count => 2
  end
end
