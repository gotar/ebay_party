
require 'ebay_party'

#test get_categories can receive success response from ebay api
  describe EbayParty::EbayApi do
    it "returns categories" do
      response = EbayParty::EbayApi.get_categories(3, 1)
      response.parsed_response['GetCategoriesResponse']['Ack'].should eql( 'Success' )
    end
  end
