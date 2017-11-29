node["windows-feature"]["features"].each do | f |
  powershell_script 'Features Install' do
  	   code <<-EOH
	    Install-WindowsFeature -Source node['windows-feature']['path_features'] -Name "#{f}"
  	   EOH
  end

end
