#resource_name :extract_file
##require 'zip'
#property :fileName, String, required: true 
#property :dirName, String, required: true 
#
#action :create do
#Extract.extract(dirName,fileName);
##zip::file.open(filename) do |zip_file|
##   zip_file.each do |entry|
##   dest_file = "#{dirname}#{entry.name}"
##   chef::log.info( "extracting #{dest_file}");
##   entry.extract(dest_file)
##   
##   end
##end
#
#end
