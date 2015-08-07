class Oauth2sController < ApplicationController
  before_action :set_oauth2, only: [:show, :edit, :update, :destroy]

  # GET /oauth2s
  # GET /oauth2s.json
  def index
    @oauth2s = Oauth2.all
  end

  # GET /oauth2s/1
  # GET /oauth2s/1.json
  def show
  end

  # GET /oauth2s/new
  def new
    @oauth2 = Oauth2.new
  end

  # GET /oauth2s/1/edit
  def edit
  end

  # POST /oauth2s
  # POST /oauth2s.json
  def create
    @oauth2 = Oauth2.new(oauth2_params)

    respond_to do |format|
      if @oauth2.save
        format.html { redirect_to @oauth2, notice: 'Oauth2 was successfully created.' }
        format.json { render :show, status: :created, location: @oauth2 }
      else
        format.html { render :new }
        format.json { render json: @oauth2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oauth2s/1
  # PATCH/PUT /oauth2s/1.json
  def update
    respond_to do |format|
      if @oauth2.update(oauth2_params)
        format.html { redirect_to @oauth2, notice: 'Oauth2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @oauth2 }
      else
        format.html { render :edit }
        format.json { render json: @oauth2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oauth2s/1
  # DELETE /oauth2s/1.json
  def destroy
    @oauth2.destroy
    respond_to do |format|
      format.html { redirect_to oauth2s_url, notice: 'Oauth2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oauth2
      @oauth2 = Oauth2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def oauth2_params
      params.require(:oauth2).permit(:authorization_uri, :token_credential_uri, :redirect_uri, :client_id, :client_secret, :scope, :code, :state, :expires_in, :update, :access_token, :token_type)
    end
end
