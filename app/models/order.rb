class Order < ActiveRecord::Base
  belongs_to :client
  belongs_to :user
  belongs_to :office
end
