Sequel.migration do
  change do
    create_table(:admins) do
      primary_key :id
      column :email, "character varying"
      column :encrypted_password, "character varying", :null=>false
      column :password_salt, "character varying"
      column :remember_token, "character varying"
      column :remember_created_at, "timestamp with time zone"
      column :sign_in_count, "integer", :default=>0
      column :current_sign_in_at, "timestamp with time zone"
      column :last_sign_in_at, "timestamp with time zone"
      column :current_sign_in_ip, "character varying"
      column :last_sign_in_ip, "character varying"
      column :created_at, "timestamp with time zone"
      column :updated_at, "timestamp with time zone"
      
      index [:email]
      index [:email], :name=>:admins_email_key, :unique=>true
    end
    
    create_table(:schema_migrations) do
      column :filename, "text", :null=>false
      
      primary_key [:filename]
    end
  end
end
Sequel.migration do
  change do
    self << "INSERT INTO \"schema_migrations\" (\"filename\") VALUES ('20150202214133_create_admins.rb')"
  end
end
