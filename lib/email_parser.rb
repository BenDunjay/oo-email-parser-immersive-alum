# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  def initialize(email_addresses)
    @email_addresses = email_addresses
    @email_array = []
  end

  def parse
    @email_addresses.split(/, | /).each do |email|
      @email_array << email
    end
    @email_array.uniq
  end
end
