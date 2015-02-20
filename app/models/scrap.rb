class Scrap < ActiveRecord::Base
  SYNTAXES = ["Markdown"]

  scope :unexpired, -> { where('"scraps"."expired_at" IS NULL OR "scraps"."expired_at" > ?', Time.now) }

  belongs_to :user
  has_many :scrap_views, :dependent => :destroy

  before_save :ensure_slug

  # TODO: Ensure uniqueness
  def ensure_slug
    self.slug ||= SecureRandom.hex(8)
  end

  def viewed(controller)
    r = controller.request
    scrap_views.create(remote_ip: r.remote_ip, user_agent: r.user_agent, viewed_at: Time.now)

    unless expires_after.nil?
      update_attribute(:expired_at, expires_after.minutes.from_now)
    end
  end
end
