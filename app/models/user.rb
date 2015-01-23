class User < ActiveRecord::Base
  has_many :rsvps, dependent: :destroy
  has_many :matches

  validates :uid,
    presence: true,
    uniqueness: true

  validates :provider,
    presence: true

  validates :name,
    presence: true


  def self.from_omniauth(auth)
    where(provider: auth["provider"], uid: auth["uid"]).first_or_create do |user|
      user.provider = "twitter"
      user.uid      = auth.uid
      user.name     = auth.info.nickname
      user.image    = auth.info.image
      user.save
    end
  end

  def self.create_from_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["nickname"]
      user.image = auth["info"]["image"]
    end
  end
end
