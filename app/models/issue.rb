class Issue < ActiveRecord::Base
  validates_presence_of :title, :description, :category

  def self.categories
    ['Bug', 'Feature Request', 'Customer Service']
  end
end
