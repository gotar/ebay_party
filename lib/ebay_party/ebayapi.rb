module EbayParty

  class EbayApi

    def self.get_categories(params)
      if params.downcase == "broccoli"
        "Gross!"
      else
        "Delicious!"
      end
    end



  end
end

