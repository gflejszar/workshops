require 'spec_helper'

describe ReviewsController do
  let(:product) { create(:product) }

  let(:valid_attributes) do
    {
      content: 'MyString',
      rating: 3,
      product_id: product.id,
    }
  end

  describe 'POST create' do
    describe 'with valid params' do
      context 'user is not signed in' do

        it 'redirects user to login page' do
          post :create, { review: valid_attributes, category_id: product.category.to_param, product_id: product.to_param }
          expect(response).to redirect_to(new_user_session_path)
        end
      end


      context 'user is signed in' do
        let(:user) { create(:user) }

        before do
          sign_in user
          controller.stub(:user_signed_in?).and_return(true)
          controller.stub(:current_user).and_return(user)
          controller.stub(:authenticate_user!).and_return(user)
        end

        it 'creates a new Review' do
          expect {
            post :create, { review: valid_attributes, user_id: user.id, category_id: product.category.to_param, product_id: product.to_param }
          }.to change(Review, :count).by(1)
        end
      end
    end
  end

end
