#  db.rb
#  
#  Copyright 2014 bladelee <bladelee@myu>
#  
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#  
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#  
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.
#  
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
