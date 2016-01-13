Rails.application.routes.draw do
  
  get "/one" => 'employees#member'


  get "/all" => 'employees#team'

end
