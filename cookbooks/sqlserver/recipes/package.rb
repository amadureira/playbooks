directory  'c:\\sql\\' do
end
#
#powershell_script  'Download SqlSErver' do
#	code <<-EOF 'Invoke-WebRequest -UseBasicParsing -Uri http://10.128.8.131/sql_server_2014_express.zip -OutFile c:\\sql_server_2014_express.zip -Proxy http://10.128.8.16:3128'
#	EOF
#	creates 'c:\\sql_server_2014_express.zip'
#end
#extract_file 'SQl Install' do
#	fileName 'c:\\sql_server_2014_express.zip'
#	dirName 'c:\\sql\\'
#end
#
Extract.extract('c:\\sql\\','c:\\sql_server_2014_express.zip');

powershell_script 'Install SQLServer' do
	code <<-EOF 'c:\sql\sql_server_2014_express\Setup.exe /q /ACTION=Install /FEATURES=SQL /INSTANCENAME=MSSQLSERVER  /SECURITYMODE=SQL  /SAPWD="YWRhZmFzYXNkZnNhZGZhc2YK*" /SQLSVCPASSWORD="YWRhZmFzYXNkZnNhZGZhc2YK*"  /IACCEPTSQLSERVERLICENSETERMS /UpdateEnabled=False'
	EOF
	only_if Extract.extract('c:\\sql\\','c:\\sql_server_2014_express.zip')
end
