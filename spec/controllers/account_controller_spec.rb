require 'rails_helper'

describe AccountsController, type: :controller do
  describe 'GET #new' do
    it "assigns a new Account to @account" do
      get :new
      expect(assigns(:account)).to be_a_new(Account)
    end
    it "renders the :new template" do
      get :new
      expect(response).to render_template(:new)
    end
  end

  describe 'POST #create' do
    context "with valid attributes" do
      it "saves the new account in the database" do
        expect{
          post :create, params: { account: attributes_for(:account) }
        }.to change(Account,:count).by(1)
      end

      it "redirects to the root page" do
        post :create, params: { account: attributes_for(:account) }
        expect(response).to redirect_to(root_path)
      end
    end

    context "with invalid attributes" do
      it "does not save the new account" do
        expect{
          post :create, params: { account: { subdomain: '' } }
        }.to_not change(Account,:count)
      end

      it "re-renders the new method" do
        post :create, params: { account: { subdomain: '' } }
        expect(response).to render_template(:new)
      end
    end
  end
end
