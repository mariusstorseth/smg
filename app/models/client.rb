class Client < ActiveRecord::Base
  has_many :orders
  belongs_to :office
end
