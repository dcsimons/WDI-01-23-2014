class Person < ActiveRecord::Base
	def self.find_all_with_email_domain(email_domain=nil)
		if email_domain.nil?
			return []
		elsif email_domain == "All"
			return all
		else	
			where("domain_name = ?", email_domain)
		end

	end

	def self.all_email_domains
		select(:domain_name).distinct.map do |x|
			x.domain_name
		end
		# select(:domain_name).distinct.to_a

	end

end
