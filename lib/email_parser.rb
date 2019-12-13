# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailAddressParser
   attr_accessor :email

   @@all = []

   def initialize(email)
     @email = email
   end

   def self.all
     @@all
   end

   def parse
    # binding.pry
     @email.split(/[\s,]+/).each{|email| @@all << email}

   end

end
