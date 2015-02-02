# Use this hook to configure devise mailer, warden hooks and so forth.
# Many of these configuration options can be set straight in your model.
Devise.setup do |config|
  config.secret_key = ENV['secret_key']

  config.mailer_sender = 'webmaster@dieprojektur.com'

  # require 'devise/orm/sequel'

  config.case_insensitive_keys = [ :email ]
  config.navigational_formats = [:'*/*', :html, :json]

  config.strip_whitespace_keys = [ :email ]

  config.skip_session_storage = [:http_auth]

  # ==> Configuration for :database_authenticatable
  # For bcrypt, this is the cost for hashing the password and defaults to 10. If
  # using other encryptors, it sets how many times you want the password re-encrypted.
  #
  # Limiting the stretches to just one in testing will increase the performance of
  # your test suite dramatically. However, it is STRONGLY RECOMMENDED to not use
  # a value less than 10 in other environments. Note that, for bcrypt (the default
  # encryptor), the cost increases exponentially with the number of stretches (e.g.
  # a value of 20 is already extremely slow: approx. 60 seconds for 1 calculation).
  config.stretches = Rails.env.test? ? 1 : 10

  config.pepper = "7a76183727e984a1a239df0515789d0b55a53d7234e01a059ae572e54c1c707107407a9c8bdc86811d347b88b3c9c9f381c75bd09da2cbe08894e0007328ea75"


  config.reconfirmable = true


  config.expire_all_remember_me_on_sign_out = true

  config.password_length = 6..128

  # config.email_regexp = /\A[^@]+@[^@]+\z/

  config.reset_password_within = 6.hours

  config.sign_out_via = :delete

  # ==> OmniAuth
  # Add a new OmniAuth provider. Check the wiki for more information on setting
  # up on your models and hooks.
  # config.omniauth :github, 'APP_ID', 'APP_SECRET', scope: 'user,public_repo'


  # When using omniauth, Devise cannot automatically set Omniauth path,
  # so you need to do it manually. For the users scope, it would be:
  # config.omniauth_path_prefix = '/my_engine/users/auth'
end
