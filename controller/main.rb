class MainController < Controller
  engine :Erubis

  def index
    @title = "Welcome to your dashboard"
  end

  def notemplate
    "there is no 'notemplate.erb' associated with this action"
  end
end

