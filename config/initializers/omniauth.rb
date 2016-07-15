Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET'], scope: "user:email,user:follow"
  provider :facebook, ENV['FB_KEY'], ENV['FB_SECRET']
end