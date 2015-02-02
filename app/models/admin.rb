class Admin < Sequel::Model
  plugin :devise
  plugin :timestamps, force: true, update_on_create: true
  devise :database_authenticatable,
    :rememberable, :trackable, :validatable
end
