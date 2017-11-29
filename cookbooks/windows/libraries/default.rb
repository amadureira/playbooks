require 'zip'

class Chef::Recipe::Extract
	def self.extract(dirname,filename)
		zip::file.open(filename) do |zip_file|
		# handle entries one by one
			zip_file.each do |entry|
				dest_file = "#{dirname}#{entry.name}"
				# extract to file/directory/symlink
				chef::log.info( "extracting #{dest_file}");
				entry.extract(dest_file)
				
			end
		end
		return true
		rescue => info
			return false;
 	end
end
