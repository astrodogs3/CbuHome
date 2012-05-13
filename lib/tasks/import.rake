def read_csv
   f = File.open("1.csv")
   f.each_line do |line|
        entries = line.split(',')
        b = Cbu.new
        b.zip_code = entries[0]
        b.house_number = entries[1]
        b.street_address = entries[2]
        b.save!
        puts "imported #{b.id}"
   end
end

desc "Import csv file"
task :import_csv => [:environment] do
  Cbu.delete_all
  read_csv
end