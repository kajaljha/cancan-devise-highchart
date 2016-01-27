OmniAuth.config.logger = Rails.logger
OmniAuth.config.full_host = "http://localhost:3000"
Rails.application.config.middleware.use OmniAuth::Builder do
provider :google_oauth2, '793973512486-p0l2r4u77k55p6ie8fomm7cjt1ick615.apps.googleusercontent.com', '1jjIsxkWJwoL56lSAXyGaMyv', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
provider :facebook, ENV['933915269977847'], ENV['2aab1df1b646af2ce302efae35bf6bad']
end

