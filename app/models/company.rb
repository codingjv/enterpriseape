class Company < ActiveRecord::Base
    def self.import(file)
#        CSV.foreach( "file.csv", "r:ISO-8859-1" ) do |row|
#        CSV.foreach( "file.csv", encoding: 'iso-8859-1' ) do |row|
#        CSV.foreach( "file.path", "r:windows-1250" ) do |row|
#        ::CSV.foreach(file.path, headers: true) do |row|
        CSV.foreach(file.path, headers: true) do |row|

            Company.create! row.to_hash
        end
    end
    
    def self.to_csv
        CSV.generate do |csv|
            csv << column_names
            all.each do |company|
                csv << company.attributes.values_at(*column_names)
            end
        end
    end
    
end
