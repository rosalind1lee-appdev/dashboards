Rails.application.routes.draw do
  #get("/", { :controller => "application", :action => "dashboard"})
  get("/forex", { :controller => "fx", :action => "rates"})
  get("/forex/:the_symbol", { :controller => "fx", :action => "ind_rates" })
  get("/forex/:sym1/:sym2", { :controller => "fx", :action => "fromto_rates" })
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
