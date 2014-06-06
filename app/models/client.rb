class Client < ActiveRecord::Base
  has_many :orders
  has_many :pipelines
end
