# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_invfriend2_session',
  :secret      => '8b75deea3ee5b9870050f7e2c7c2857e215d7b10af93b43981665c6cf42c533915cf64d8fe35f9660df150abfdfbdb767b1e253d458aff95e330debe8ef171b4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
