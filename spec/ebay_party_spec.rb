require 'ebay_party'

describe EbayParty::EbayApi do
  it "returns categories" do
    EbayParty::EbayApi.get_categories("").should_not eql( nil )
  end

end
