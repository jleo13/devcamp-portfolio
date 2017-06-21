class Portfolio < ApplicationRecord

validates_presence_of :title, :body, :main_image, :thumb_image


def self.ruby
where(subtitle: 'Ruby on Rails ')
end
  
scope :abj, -> {where(subtitle: 'My great service, ABJ')}

end
