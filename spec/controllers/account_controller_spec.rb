require 'rails_helper'

describe AccountsController, type: :controller do
  describe 'GET #new' do
    it "assigns a new Account to @account"
    it "renders the :new template"
  end

  describe 'POST #create' do
    context "with valid attributes" do
      it "saves the new contact in the database"
      it "redirects to the home page"
    end

    context "with invalid attributes" do
      it "does not save the new contact in the database"
      it "re-renders the :new template"
    end
  end
end
