require 'spec_helper'

RSpec.describe UsersController, :type => :controller do

  context 'user is signed in' do
    let(:user) { create(:user) }

    before do
      sign_in user
      controller.stub(:user_signed_in?).and_return(true)
      controller.stub(:current_user).and_return(user)
      controller.stub(:authenticate_user!).and_return(user)
    end

    describe "GET show" do
      it "returns http success" do
        get :show, { id: user.to_param }
        expect(response).to have_http_status(:success)
      end
    end
  end

end
