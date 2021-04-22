Rails.application.routes.draw do
  #get("/", { :controller => "application", :action => "dashboard"})
  get("/forex", { :controller => "fx", :action => "rates"})
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
