class Auser < ActiveRecord::Base
  #user.url = auth_hash['info']['http://localhost:3000/users/auth/google_oauth2/callback'][user.“google_oauth2″.capitalize]
  def self.from_omniauth(auth)
   where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
    user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end
end

# class << self
#   def from_omniauth(auth_hash)
#     user = find_or_create_by(uid: auth_hash['uid'], provider: auth_hash['provider'])
#     user.name = auth_hash['info']['name']
#     user.location = auth_hash['info']['location']
#     user.image_url = auth_hash['info']['image']
#     user.url = auth_hash['info']['urls']['Facebook']
#     user.save!
#     user
#   end
#   user.url = auth_hash['info']['urls'][user.provider.capitalize]
# end
