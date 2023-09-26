Rails.application.routes.draw do
  get("/", {:controller => "app", :action => "home"})
  get("/square_root/new", {:controller => "app", :action => "square_root_new"})
  get("/square_root/results", {:controller => "app", :action => "square_root_results"})
  get("/square/new", {:controller => "app", :action => "square_new"})
  get("/square/results", {:controller => "app", :action => "square_results"})
  get("/random/new", {:controller => "app", :action => "random_new"})
  get("/random/results", {:controller => "app", :action => "random_results"})
  get("/payment/new", {:controller => "app", :action => "payment_new"})
  get("/payment/results", {:controller => "app", :action => "payment_results"})

end
