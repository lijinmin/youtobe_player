class OpenAuthsController < ApplicationController
  before_action :set_open_auth, only: [ :edit, :update, :destroy]
  # before_action :new, only:[ :show]

  # GET /open_auths
  # GET /open_auths.json
  def index
    @open_auths = OpenAuth2.all
  end

  # GET /open_auths/1
  # GET /open_auths/1.json
  def show
    @auth_uri = OpenAuth2.get_auth_uri
  end

  # GET /open_auths/new
  def new
    @open_auth = OpenAuth.new
    # if OpenAuth.where(:id=>1).first == nil
    #   open_auth = OpenAuth.new
    #   open_auth.authorization_uri = 'https://accounts.google.com/o/oauth2/auth'
    #   open_auth.token_credential_uri = 'https://accounts.google.com/o/oauth2/token'
    #   open_auth.redirect_uri = 'http://wxtest.aggso.com/oauth2callback'
    #   open_auth.client_id = '700678661036-6df2bt5nnlq8bq61sa1s6ji0f2indgc9.apps.googleusercontent.com'
    #   open_auth.client_secret = 'VhUtzfBcK5s27z9rtkaH12Mz'
    #   open_auth.scope = 'https://www.google.com/m8/feeds/'
    #   open_auth.save
    # end
    # redirect_to :action => :show
  end

  # GET /open_auths/1/edit
  def edit
  end

  # POST /open_auths
  # POST /open_auths.json
  # def create
  #   # @open_auth = OpenAuth.new(open_auth_params)

  #   # respond_to do |format|
  #   #   if @open_auth.save
  #   #     format.html { redirect_to @open_auth, notice: 'Open auth was successfully created.' }
  #   #     format.json { render :show, status: :created, location: @open_auth }
  #   #   else
  #   #     format.html { render :new }
  #   #     format.json { render json: @open_auth.errors, status: :unprocessable_entity }
  #   #   end
  #   # end
  # end

  # PATCH/PUT /open_auths/1
  # PATCH/PUT /open_auths/1.json
  # def update
  #   respond_to do |format|
  #     if @open_auth.update(open_auth_params)
  #       format.html { redirect_to @open_auth, notice: 'Open auth was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @open_auth }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @open_auth.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /open_auths/1
  # DELETE /open_auths/1.json
  def destroy
    @open_auth.destroy
    respond_to do |format|
      format.html { redirect_to open_auths_url, notice: 'Open auth was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_open_auth
      @open_auth = OpenAuth.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def open_auth_params
      params.require(:open_auth).permit(:authorization_uri, :token_credential_uri, :redirect_uri, :client_id, :client_secret, :scope, :code, :state, :scope, :access_token, :token_type, :expires_in, :update)
    end
end
