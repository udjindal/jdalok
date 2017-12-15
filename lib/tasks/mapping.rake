namespace :mapping do
  desc "TODO"
  task migration: :environment do
      file = File.read('Data.json')
      # puts file
      data_hash = JSON.parse(file)
      # puts data_hash
      i = 0
      num = data_hash["data"].length
      # puts num
      while i < num do
      listedin =(data_hash["data"][i]["listedin"]).length
      k = 0
      if listedin > 0
              while k < listedin
                  if data_hash["data"][i]["listedin"][k].length > 1
                  object_ls = Listedin.find_by(listedin_category: data_hash["data"][i]["listedin"][k])
                  object_map = Mapping.create(restaurant_id: i + 1 , listedin_id: object_ls.id)
                end
                  k += 1
              end

          end
      i +=1
      end
  end
end
