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
        #  puts "i is"
        #  puts i
        a = data_hash["data"][i]["listofimages"]
        if a == []
            object = Restaurant.create(city: "jhansi", url: data_hash["data"][i]["url"],name: data_hash["data"][i]["Name"], address: data_hash["data"][i]["address"], hours:data_hash["data"][i]["hours"])
            object.save
        else
        a = a[0]
        b = a[/\(.*?\)/]
        c = b[2...-2]
         object = Restaurant.create(city: "jhansi", url: data_hash["data"][i]["url"],name: data_hash["data"][i]["Name"], address: data_hash["data"][i]["address"], hours:data_hash["data"][i]["hours"] ,image_url: c)
         object.save
        end
        #  contact_info: data_hash["data"][i]["contact"][0]
        contacts = (data_hash["data"][i]["contact"]).length
        j = 0
        if contacts > 0

                while j < contacts
                    object_c = Contact.create(restaurant_id: i + 1 , number: data_hash["data"][i]["contact"][j])
                    object_c.save
                    j += 1
                end

            end



     i +=1
     end
 end
end
