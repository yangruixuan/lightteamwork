require 'redmine'

#An function that brings folder instalation name of plugin
def getPluginFolderName
  File.dirname(__FILE__).gsub(File.join(Rails.root.to_s,'plugins'),'').split('/')[1]
end

Redmine::Plugin.register :redmine_monitoring_controlling do
  name 'Redmine Monitoramento & Controle'
  author 'Alexander Monteiro'
  description "This plugin is a graphic tool to Monitoring and Controlling projects on redmine."
  version '0.0.2'
  url 'http://alexmonteiro.github.com/Redmine-Monitoring-Controlling/'
  author_url 'http://www.alexandermonteiro.com.br'
  
  #installtion folder
  #plugin_folder_name File.dirname(__FILE__).gsub(File.join(Rails.root.to_s,'vendor','plugins'),'').split('/')[1]
  
  project_module :monitoring_controlling_project do
      permission :view_home_monitoring_controlling, :home_monitoring_controlling_project => :index
      permission :view_mc_time_mgmt_project, :mc_time_mgmt_project => :index
      permission :view_mc_human_resource_mgmt_project, :mc_human_resource_mgmt_project => :index
      
  end
  
  menu :project_menu, :monitoring_controlling_project, { :controller => 'home_monitoring_controlling_project', :action => 'index'}, :caption => 'Monitor'

end

