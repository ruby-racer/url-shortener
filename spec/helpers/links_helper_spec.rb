require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the LinksHelper. For example:
#
# describe LinksHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe LinksHelper, type: :helper do
  link = Link.create!(original_url: 'https://www.google.com/')
  it "shows correct notification" do
    expect(helper.notice_text link).to eq("Please use<br/><b>http://UrlShortener.com/#{link.id.to_s(16)}</b><br/>
    as short representation of <br/><b>https://www.google.com/</b>")
  end
  # pending "add some examples to (or delete) #{__FILE__}"
end
