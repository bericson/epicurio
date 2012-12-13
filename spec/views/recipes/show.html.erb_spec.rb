require 'spec_helper'

describe "recipes/show" do
  before(:each) do
    @recipe = assign(:recipe, stub_model(Recipe,
      :name => "Name",
      :ingredients => "Ingredients",
      :servings => 1,
      :author => "Author",
      :preparation => "Preparation"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Ingredients/)
    rendered.should match(/1/)
    rendered.should match(/Author/)
    rendered.should match(/Preparation/)
  end
end