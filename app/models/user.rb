class User < ActiveRecord::Base
  validates :uid,
    presence: true,
    uniqueness: true

  validates :provider,
    presence: true

  validates :name,
    presence: true


  def self.from_omniauth(auth)
    create_from_omniauth(auth)
  end

  def self.create_from_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["nickname"]
    end
  end
end
