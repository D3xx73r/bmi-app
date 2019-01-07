require 'rails_helper'

RSpec.describe BmiCalculationsController, type: :controller do
  let(:user) { create(:user) }
  let(:bmi_calculation) { create(:bmi_calculation, user: user) }

  it 'redirects to sign in path if user not signed in' do
    get :new
    expect(response).to redirect_to(new_user_session_path)
  end

  context 'with user signed in' do
    before do
      sign_in user
    end

    describe '#index' do
      it 'assigns current user BMI records' do
        get :index
        expect(assigns(:bmi_calculations)).to include(bmi_calculation)
      end

      it 'renders the index template' do
        get :index
        expect(response).to render_template(:index)
      end
    end

    describe '#new' do
      it 'renders the new template' do
        get :new
        expect(response).to render_template(:new)
      end

      it 'builds a new instance of BmiCalculation' do
        get :new
        expect(assigns(:bmi_calculation)).to be_a(BmiCalculation)
      end
    end

    describe '#create' do
      it 'creates a new BmiCalculation for a user' do
        expect {
          post :create, params: { bmi_calculation: { weight: 69, height: 1.71 } }
        }.to change { BmiCalculation.count }.by(1)
      end
    end
  end
end
