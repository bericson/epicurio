require 'spec_helper'

describe "recipes/new" do
  before(:each) do
    assign(:recipe, stub_model(Recipe,
      :name => "MyString",
      :ingredients => "MyString",
      :servings => 1,
      :author => "MyString",
      :preparation => "MyString"
    ).as_new_record)
  end

  it "renders new recipe form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => recipes_path, :method => "post" do
      assert_select "input#recipe_name", :name => "recipe[name]"
      assert_select "input#recipe_ingredients", :name => "recipe[ingredients]"
      assert_select "input#recipe_servings", :name => "recipe[servings]"
      assert_select "input#recipe_author", :name => "recipe[author]"
      assert_select "textarea#recipe_preparation", :name => "recipe[preparation]"
    end
  end
end
