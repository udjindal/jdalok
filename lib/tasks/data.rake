namespace :data do
 task :migration => :environment do
     file = File.read('Data.json')
     # puts file
     data_hash = JSON.parse(file)
     # puts data_hash
     i = 0
     num = data_hash["data"].length
     # puts num
     while i < num do
         object = Restaurant.create(city: "jhansi", url: data_hash["data"][i]["url"], address: data_hash["data"][i]["address"] , contact_info: data_hash["data"][i]["contact"][0])
         object.save
         i +=1
     end
 end
end
