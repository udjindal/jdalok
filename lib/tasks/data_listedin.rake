namespace :data_listedin do
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
                      object_ls = Listedin.where(listedin_category: data_hash["data"][i]["listedin"][k]).first_or_create
                      object_ls.save
                      puts data_hash["data"][i]["listedin"][k]
                end
                  k += 1
              end

          end
      i +=1
      end
  end
end
