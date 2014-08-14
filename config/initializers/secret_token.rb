# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
DbApp::Application.config.secret_key_base = '3dd6653e752d3791dce967ae71186b5e1c7b22fcd943306735e51ca1bc19250601c9340ed14d6b2a01616bf9d7ac9e4454bea5610cbfaf6acb17b4fa137d417c'
