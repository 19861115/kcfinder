require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe ComicsController, type: :controller do
  # This should return the minimal set of attributes required to create a valid
  # Comic. As you add validations to Comic, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    { asin: 'test comic asin',
      image_path: 'test comic image_path' }
  end

  let(:invalid_attributes) do
    { asin: ' ',
      image_path: ' ' }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ComicsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe 'GET #index' do
    it 'assigns all comics as @comics' do
      comic = Comic.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:comics)).to eq([comic])
    end
  end

  describe 'GET #show' do
    it 'assigns the requested comic as @comic' do
      comic = Comic.create! valid_attributes
      get :show, { id: comic.to_param }, valid_session
      expect(assigns(:comic)).to eq(comic)
    end
  end

  describe 'GET #new' do
    it 'assigns a new comic as @comic' do
      get :new, {}, valid_session
      expect(assigns(:comic)).to be_a_new(Comic)
    end
  end

  describe 'GET #edit' do
    it 'assigns the requested comic as @comic' do
      comic = Comic.create! valid_attributes
      get :edit, { id: comic.to_param }, valid_session
      expect(assigns(:comic)).to eq(comic)
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Comic' do
        expect do
          post :create, { comic: valid_attributes }, valid_session
        end.to change(Comic, :count).by(1)
      end

      it 'assigns a newly created comic as @comic' do
        post :create, { comic: valid_attributes }, valid_session
        expect(assigns(:comic)).to be_a(Comic)
        expect(assigns(:comic)).to be_persisted
      end

      it 'redirects to the created comic' do
        post :create, { comic: valid_attributes }, valid_session
        expect(response).to redirect_to(Comic.last)
      end
    end

    context 'with invalid params' do
      it 'assigns a newly created but unsaved comic as @comic' do
        post :create, { comic: invalid_attributes }, valid_session
        expect(assigns(:comic)).to be_a_new(Comic)
      end

      it "re-renders the 'new' template" do
        post :create, { comic: invalid_attributes }, valid_session
        expect(response).to render_template('new')
      end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:new_attributes) do
        { asin: 'new test comic asin', image_path: 'new test comic image_path' }
      end

      it 'updates the requested comic' do
        comic = Comic.create! valid_attributes
        put :update, { id: comic.to_param, comic: new_attributes }, valid_session
        comic.reload
        expect(comic.asin).to eq('new test comic asin')
        expect(comic.image_path).to eq('new test comic image_path')
      end

      it 'assigns the requested comic as @comic' do
        comic = Comic.create! valid_attributes
        put :update, { id: comic.to_param, comic: valid_attributes }, valid_session
        expect(assigns(:comic)).to eq(comic)
      end

      it 'redirects to the comic' do
        comic = Comic.create! valid_attributes
        put :update, { id: comic.to_param, comic: valid_attributes }, valid_session
        expect(response).to redirect_to(comic)
      end
    end

    context 'with invalid params' do
      it 'assigns the comic as @comic' do
        comic = Comic.create! valid_attributes
        put :update, { id: comic.to_param, comic: invalid_attributes }, valid_session
        expect(assigns(:comic)).to eq(comic)
      end

      it "re-renders the 'edit' template" do
        comic = Comic.create! valid_attributes
        put :update, { id: comic.to_param, comic: invalid_attributes }, valid_session
        expect(response).to render_template('edit')
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested comic' do
      comic = Comic.create! valid_attributes
      expect do
        delete :destroy, { id: comic.to_param }, valid_session
      end.to change(Comic, :count).by(-1)
    end

    it 'redirects to the comics list' do
      comic = Comic.create! valid_attributes
      delete :destroy, { id: comic.to_param }, valid_session
      expect(response).to redirect_to(comics_url)
    end
  end
end
