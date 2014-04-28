#  db.rb
#  
#  Copyright 2014 bladelee <bladelee@myu>
#  

 require 'rubygems'  
 require 'active_record'  
 require 'mysql'
 
 ActiveRecord::Base.establish_connection(  
    :adapter=> "mysql",  
    :host => "localhost",  
    :database=> "mytest",  
    :user     => "root",
    :password => "bbs1101"  
     #- See more at: http://trainersunion.mobi/vault/ruby-scripts/active-record.html#sthash.Xu8yjpJ9.dpuf
    )  
      
class Rubyist < ActiveRecord::Base  
end  
      
Rubyist.create(:name => 'Luc Juggery', :city => "Nashville, Tenessee")  
Rubyist.create(:name => 'Sunil Kelkar', :city => "Pune, India")  
Rubyist.create(:name => 'Adam Smith', :city => "San Fransisco, USA")  
    
      
participant = Rubyist.find(:first)  
puts %{#{participant.name} stays in #{participant.city}}  
      
Rubyist.find(:first).destroy  
