require 'zip'

class Chef::Recipe::Extract
   def self.extract(dirname,filename)
      Chef::Log.info( "extracting ---- #{filename}");
      Zip::File.open(filename) do |zip_file|
      # handle entries one by one
         zip_file.each do |entry|
            dest_file = "#{dirname}#{entry.name}"
            Chef::Log.info( "extracting #{dest_file}");
            entry.extract(dest_file)
            
         end
      end
      
      true
      rescue => info
      Chef::Log.error("Faile #{info}");
      false;
    end
end
