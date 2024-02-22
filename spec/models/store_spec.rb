require 'rails_helper'

RSpec.describe Store, type: :model do
  describe "validation" do
    it "should validate presence of name" do
      store = Store.new 
      expect(store.valid?).to eq false 
     # expect(store).to be_valid
    end
    #com shoullda agora o mesmo teste de cima
    it "should validate presence of name com shoulda" do
        should validate_presence_of :name
    end
    # outra forma de sintaxe
    it { should validate_presence_of :name }
    it { should validate_length_of(:name).is_at_least(3)}
    it "should be invalid when name is incorrect" do
      store = Store.new name: "Gr"
      expect(store.valid?).to eq false 
    end
  end
end
