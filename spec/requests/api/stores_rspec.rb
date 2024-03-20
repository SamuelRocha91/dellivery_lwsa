require 'rails_helper'

RSpec.describe "/stores", type: :request do
   describe "GET /show" do
     it "render a sucessful response with stores data" do
       user = User.create! email: "sam@gmail.com", password: "kosjksjd123235@", password_confirmation:"kosjksjd123235@"
       store = Store.create! name: "Greatest store", user: user
       sign_in(user)
       get "/stores/#{store.id}", headers: {"Accept" => "application/json"}
       json = JSON.parse(response.body)

       expect(json["name"]). to eq "Greatest store"
     end
   end
end