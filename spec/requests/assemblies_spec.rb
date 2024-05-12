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

RSpec.describe "/assemblies", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Assembly. As you add validations to Assembly, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Assembly.create! valid_attributes
      get assemblies_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      assembly = Assembly.create! valid_attributes
      get assembly_url(assembly)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_assembly_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      assembly = Assembly.create! valid_attributes
      get edit_assembly_url(assembly)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Assembly" do
        expect {
          post assemblies_url, params: { assembly: valid_attributes }
        }.to change(Assembly, :count).by(1)
      end

      it "redirects to the created assembly" do
        post assemblies_url, params: { assembly: valid_attributes }
        expect(response).to redirect_to(assembly_url(Assembly.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Assembly" do
        expect {
          post assemblies_url, params: { assembly: invalid_attributes }
        }.to change(Assembly, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post assemblies_url, params: { assembly: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested assembly" do
        assembly = Assembly.create! valid_attributes
        patch assembly_url(assembly), params: { assembly: new_attributes }
        assembly.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the assembly" do
        assembly = Assembly.create! valid_attributes
        patch assembly_url(assembly), params: { assembly: new_attributes }
        assembly.reload
        expect(response).to redirect_to(assembly_url(assembly))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        assembly = Assembly.create! valid_attributes
        patch assembly_url(assembly), params: { assembly: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested assembly" do
      assembly = Assembly.create! valid_attributes
      expect {
        delete assembly_url(assembly)
      }.to change(Assembly, :count).by(-1)
    end

    it "redirects to the assemblies list" do
      assembly = Assembly.create! valid_attributes
      delete assembly_url(assembly)
      expect(response).to redirect_to(assemblies_url)
    end
  end
end
