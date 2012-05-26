module EbayParty

require 'httparty' 

  class EbayApi
    include HTTParty
 
    def self.get_categories(site='3', level_limit='1')
      format :xml
    
      headers(ebay_headers.merge({"X-EBAY-API-CALL-NAME" => "GetCategories"}))

      requestXml = "<?xml version='1.0' encoding='utf-8'?>
                    <GetCategoriesRequest xmlns=\"urn:ebay:apis:eBLBaseComponents\">
                      <RequesterCredentials>
                        <eBayAuthToken>#{ebay_party_auth_token}</eBayAuthToken>
                      </RequesterCredentials>
                      <CategorySiteID>#{site}</CategorySiteID>
                      <DetailLevel>ReturnAll</DetailLevel>
                      <LevelLimit>#{level_limit}</LevelLimit>
                      <ViewAllNodes>true</ViewAllNodes>
                    </GetCategoriesRequest>"

      response = post(ebay_party_api_url, :body => requestXml)
 #     puts response
    
#      raise "Bad Response | #{response.inspect}" if response.parsed_response['GetCategoriesResponse']['Ack'] != 'Success'
#      response.parsed_response['GetCategoriesResponse']['Timestamp']
     
#      puts EbayApi.get_categories

    end


    private

      def self.ebay_headers
        {"X-EBAY-API-COMPATIBILITY-LEVEL" => "433",
               "X-EBAY-API-DEV-NAME" => ENV['ebay_party_dev_id'],
               "X-EBAY-API-APP-NAME" => ENV['ebay_party_app_id'],
               "X-EBAY-API-CERT-NAME" => ENV['ebay_party_cert_id'],
               "X-EBAY-API-SITEID" => "0",
	       "X-EBAY-API-REQUEST-ENCODING" => " JSON",
               "Content-Type" => "text/xml"}
      end

      def self.ebay_party_auth_token
        ENV['ebay_party_auth_token']
      end

      def self.ebay_party_api_url
        ENV['ebay_party_uri']
      end

  end
end
