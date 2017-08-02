namespace :restaurants do
 task :migrate => :environment do
   require 'csv'
   data= CSV.read("/home/udit/work/Just Dial Alok - Sheet1.csv")
    data.each do |row|
      Restaurant.create(url: row[0], address: row[1], contact_info: row[2], name: row[3], city: "jhansi")
    end
 end
end
