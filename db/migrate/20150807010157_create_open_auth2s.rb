class CreateOpenAuth2s < ActiveRecord::Migration
  def change
    create_table :open_auth2s do |t|
      t.string :authorization_uri
      t.string :token_credential_uri
      t.string :redirect_uri
      t.string :client_id
      t.string :client_secret
      t.string :scope
      t.string :code
      t.string :access_token
      t.string :token_type
      t.string :expires_in
      t.datetime :update
      t.string :state

      t.timestamps null: false
    end
  end
end
