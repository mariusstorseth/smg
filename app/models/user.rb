class User < ActiveRecord::Base
  belongs_to :office
  has_many :orders
  has_many :pipelines
end
