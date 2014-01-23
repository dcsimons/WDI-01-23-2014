class PeopleController < ApplicationController
  def index
    # remember the domain name selected
    @email_domain = params[:email_domain] || 'All'

    # get all people with domain name selected
    @people = Person.find_all_with_email_domain(@email_domain)

    @email_domains = @people.all_email_domains
  end
end
