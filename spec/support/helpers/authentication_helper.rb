module AuthenticationHelper
  def sign_in_as(user)
    OmniAuth.config.mock_auth[:twitter] = {
      'provider' => 'twitter',
      'uid' => user.uid,
      'info' => {
        'nickname' => user.name
      },
    }

    visit root_path
    click_link "Sign in with Twitter"
  end
end
