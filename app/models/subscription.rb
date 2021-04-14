class Subscription < ActiveRecord::Base

  belongs_to :magazine
  belongs_to :reader

  def print_details
    subscription_price = self.price
    magazine_title = self.magazine.title
    reader_name = self.reader.name
    puts "#{reader_name} subscribed to #{magazine_title} for #{subscription_price}"
  end
    
end