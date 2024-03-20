require 'rails_helper'

RSpec.describe "stores/show", type: :view do
  let(:user) {
    user = User.new( email: "sam@gmail.com", password: "kosjksjd123235@", password_confirmation:"kosjksjd123235@")
    user.save!
    user
  }
  before(:each) do
    assign(:store, Store.create!(
      name: "Name",
      user: user
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
