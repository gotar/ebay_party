# EbayParty

You are cordially invited to Ebay Party, the biggest ruby ebay api interface with a whopping, stonking, ahum....single method!

Thats right this gem will allow you to do one thing and one thing only: get categories from ebay. 

While this may appear pathetic, to me it is monumental as it is my first gem!


## Installation

Add this line to your application's Gemfile:

    gem 'ebay_party'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ebay_party

## Usage

Define your ENV variables for the ebay api (you can get these from ebay developer site), e.g. in bash shell add these to your bashrc:
    export ebay_party_dev_id=""
    export ebay_party_app_id=""   
    export ebay_party_cert_id=""
    export ebay_party_uri=""
    export ebay_party_auth_token=""

Then take your time learning ebay party's single method:

    EbayParty::EbayApi.get_categories(site, level_limit)

    'site' refers to ebay site id to fix the scope to your required country e.g. 3 for the UK.
    'level_limit' refers to the depth of categories required  e.g. 1 for top level categories only



## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
