class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :global_variables!

  def global_variables!
    @offices = Office.all
    @users = User.all
    @orders = Order.all
    @pipelines = Pipeline.all
    @clients = Client.all
  end
end
