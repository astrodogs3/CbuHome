require 'open-uri'
require 'rexml/document'

# set GOOGLE_MAPS_KEY and YAHOO_API_KEY to your own API key values
# I set mine in environment.rb

task :google_geocode => :environment do
##  api_key=ABQIAAAAjikXrE5Nw2qkAh2pV1AndBRhkU_XGR0OZPpJ2vMxxDIwA559yhSDZMPgT5cKRnl8fvI5ZlbHtoW7Uw # set in environment.rb
  api_key="ABQIAAAAjikXrE5Nw2qkAh2pV1AndBRd_f1wgoxrA90ATXKnKNuxhfd85BR749SJbLz1tXsn07_Es6HzO_rodg"# set in environment.rb

  (Cbu.find :all).each do |cbu|

    puts "\nCbu: #{cbu.type}"
##    puts "Address: #{cbu.full_address}"
    puts "Address: #{cbu.address}"

    xml=open("http://maps.google.com/maps/geo?q=#{CGI.escape(cbu.address)}&output=xml&key=#{api_key}").read
    doc=REXML::Document.new(xml)

    puts "Status: "+doc.elements['//kml/Response/Status/code'].text

    if doc.elements['//kml/Response/Status/code'].text != '200'
      puts "Unable to parse Google response for #{cbu.type}"
    else
      doc.root.each_element('//Response') do |response|
        response.each_element('//Placemark') do |place|      
          lng,lat=place.elements['//coordinates'].text.split(',')
          
          puts "Result Address: " << place.elements['//address'].text
          puts "  Latitude: #{lat}"
          puts "  Longitude: #{lng}"
        end # end each place
      end # end each response
    end # end if result == 200
  end # end each cbu
end # end rake task

task :yahoo_geocode => :environment do
  api_key=YAHOO_API_KEY

  (Store.find :all).each do |store|
    puts "\nStore: #{store.name}"

    url="http://api.local.yahoo.com/MapsService/V1/geocode?appid=#{api_key}&location=#{CGI.escape(store.full_address)}"
      xml=open(url).read
      doc=REXML::Document.new(xml)

      doc.root.each_element('//Result') do |result|
      puts "Result Precision: " << result.attributes['precision']
      if result.attributes['precision'] != 'address'
        puts "Warning: " << result.attributes['warning']
        puts "Address: " << result.elements['//Address'].text.to_s
      end
      puts "Latitude: " << result.elements['//Latitude'].text
      puts "Longitude: " << result.elements['//Longitude'].text
            
    end # end each result
  end  # end each store
end # end task

task :geocoder_us => :environment do
  (Store.find :all).each do |store|
    puts "\nStore: #{store.name}"

    url="http://geocoder.us/service/csv/geocode?address=#{CGI.escape(store.full_address)}"
    res=open(url).read.chomp
    lat,lng,address,city,state,zip=res.split(',')

    puts "Latitude: #{lat}" 
    puts "Longitude: #{lng}"

    end  # end each store
end # end task  

task  :geocoder_ca => :environment do
  street_no = "301"
  street = "Front Street West"
  city = "Toranto"
  prov = "ON"
  postal = "M5V2T6"

  url="http://geocoder.ca/?" 
  url << "&stno=" << CGI.escape(street_no)
  url << "&addresst=" << CGI.escape(street)  
  url << "&city=" << CGI.escape(city)
  url << "&prov=" << CGI.escape(prov)
  url << "&postal=" << CGI.escape(postal)
  url << "&geoit=XML"
  
  xml=open(url).read
  doc=REXML::Document.new(xml)
  
  puts "The CN tower is located here:"
  puts "Latitude: " << doc.root.elements['//latt'].text
  puts "Longitude: " << doc.root.elements['//longt'].text
end


task :google_persist => :environment do
##  api_key=ABQIAAAAjikXrE5Nw2qkAh2pV1AndBRhkU_XGR0OZPpJ2vMxxDIwA559yhSDZMPgT5cKRnl8fvI5ZlbHtoW7Uw # set in environment.rb
  api_key="ABQIAAAAjikXrE5Nw2qkAh2pV1AndBRd_f1wgoxrA90ATXKnKNuxhfd85BR749SJbLz1tXsn07_Es6HzO_rodg"# set in environment.rb
  (Cbu.find :all, :conditions=>"lat IS NULL OR lat > 90").each do |cbu|

    puts "\nCbu: #{cbu.type}"    
    puts "Source Address: #{cbu.full_address}"    
 ##   puts "Source Address: #{cbu.address}"    
    xml=open("http://maps.google.com/maps/geo?q=#{CGI.escape(cbu.full_address)}&output=xml&key=#{api_key}").read
    doc=REXML::Document.new(xml)

    puts "Status: "+doc.elements['//kml/Response/Status/code'].text

    if doc.elements['//kml/Response/Status/code'].text != '200'
      puts "Unable to parse Google response for #{cbu.type}"
    else
      lng,lat=doc.root.elements['//coordinates'].text.split(',')
      cbu.lat=lat     ##.to_f
      cbu.lng=lng     ##.to_f
      cbu.save
    end # end if result == 200
  end # end each cbu
end # end rake task
