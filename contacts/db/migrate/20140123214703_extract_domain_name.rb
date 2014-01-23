class ExtractDomainName < ActiveRecord::Migration
  def change
  	Person.all.each do |x|
  		x.domain_name = x.email.split("@").last
  		x.save
  	end
  end
end
