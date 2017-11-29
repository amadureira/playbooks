powershell_script 'Features' do
   code <<-EOH
   Install-WindowsFeature -Source C:\\sxs -Name NET-Framework-Core
   EOH
end
