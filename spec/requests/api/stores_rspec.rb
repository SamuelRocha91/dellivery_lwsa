require 'rails_helper'

RSpec.describe "/stores", type: :request do
   describe "GET /show" do
     it "render a sucessful response with stores data" do
       store = Store.create! name: "Greatest store"
       get "/stores/#{store.id}", headers: {"Accept" => "application/json"}
       json = JSON.parse(response.body)

       expect(json["name"]). to eq "Greatest store"
     end
   end
end