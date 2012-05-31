RedmineApp::Application.routes.draw do
  #match '/home_monitoring_controlling_project/index/:id', :controller => 'home_monitoring_controlling_project', :action => 'index'
  #match '/mc_time_mgmt_project/index/:id', :controller => 'mc_time_mgmt_project', :action => 'index'
  #match '/mc_human_resource_project/index/:id', :controller => 'mc_human_resource_mgmt_project', :action => 'index'

  match 'projects/:id/monitor', :to => 'home_monitoring_controlling_project#index', :via => :get
  match 'projects/:id/time', :to => 'mc_time_mgmt_project#index', :via => :get
  match 'projects/:id/resource', :to => 'mc_human_resource_mgmt_project#index', :via => :get
end