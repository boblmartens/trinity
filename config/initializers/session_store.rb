# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_trinity_session',
  :secret      => '7b39b7f58ce82dbe86041c61fe17d7d0440d24b7b2dd10b17b5eef6f65ebf8adf2848288741f178a3fb9e5f6baf6f823271c002275ca94e3f931af4697b529cc'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
