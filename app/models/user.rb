class User < ActiveRecord::Base
  belongs_to :office
  has_many :orders
  has_many :pipelines

  def full_name 
    first_name + " " + last_name
  end
end
