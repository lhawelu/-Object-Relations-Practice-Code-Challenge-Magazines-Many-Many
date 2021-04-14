class Magazine < ActiveRecord::Base
  has_many :subscriptions
  has_many :readers, through: :subscriptions

  def email_list
    self.readers.pluck(:email).join(";")
  end

  def self.most_popular
    Magazine.all.sort_by {|m| m.subscriptions.size}.last
  end

end