# frozen_string_literal: true

require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe '/companies', type: :request do
  # This should return the minimal set of attributes required to create a valid
  # Company. As you add validations to Company, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      Company.create! valid_attributes
      get companies_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      company = Company.create! valid_attributes
      get company_url(company)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_company_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'renders a successful response' do
      company = Company.create! valid_attributes
      get edit_company_url(company)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Company' do
        expect do
          post companies_url, params: { company: valid_attributes }
        end.to change(Company, :count).by(1)
      end

      it 'redirects to the created company' do
        post companies_url, params: { company: valid_attributes }
        expect(response).to redirect_to(company_url(Company.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Company' do
        expect do
          post companies_url, params: { company: invalid_attributes }
        end.to change(Company, :count).by(0)
      end

      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post companies_url, params: { company: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested company' do
        company = Company.create! valid_attributes
        patch company_url(company), params: { company: new_attributes }
        company.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the company' do
        company = Company.create! valid_attributes
        patch company_url(company), params: { company: new_attributes }
        company.reload
        expect(response).to redirect_to(company_url(company))
      end
    end

    context 'with invalid parameters' do
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        company = Company.create! valid_attributes
        patch company_url(company), params: { company: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested company' do
      company = Company.create! valid_attributes
      expect do
        delete company_url(company)
      end.to change(Company, :count).by(-1)
    end

    it 'redirects to the companies list' do
      company = Company.create! valid_attributes
      delete company_url(company)
      expect(response).to redirect_to(companies_url)
    end
  end
end
