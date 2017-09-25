require "json"

module OpenRTB
  class Bid
    JSON.mapping(
      id: String,
      impid: String,            # Required string ID of the impression object to which this bid applies
      campaignid: String,       # Campaign ID that appears with the Ad markup
      creativeid: String,       # Creative ID for reporting content issues or defects
      adid: String,             # References the ad to be served if the bid wins
      dealid: String,           # DealID extension of private marketplace deals
      price: Float64,           # Bid price in CPM. Suggests using integer math for accounting to avoid rounding errors
      nurl: String,             # Win notice URL
      burl: String,             # Billing notice URL
      lurl: String,             # Loss notice URL.
      iurl: String,             # Sample image URL
      admarkup: String,         # Actual ad markup. XHTML if a response to a banner object, or VAST XML if a response to a video object
      advdomain: String,        # Advertiser’s primary or top-level domain for advertiser checking; or multiple if imp rotating
      bundle: String,           # A platform-specific application identifier intended to be unique to the app and independent of the exchange
      tactic: String,           # Tactic ID to enable buyers to label bids for reporting to the exchange the tactic through which their bid was submitted
      cat: String,              # IAB content categories of the creative. Refer to List 5.1
      language: String,         # Language of the creative using ISO-639-1-alpha-2
      attr: Int8,               # Array of creative attributes
      protocol: Int8,           # Video response protocol of the markup if applicable
      qagmediarating: Int8,     # Creative media rating per IQG guidelines
      w: Int8,                  # Height of the ad in pixels
      h: Int8,                  # Width of the ad in pixels
      wratio: Int8,             # Relative width of the creative when expressing size as a ratio
      hratio: Int8,             # Relative height of the creative when expressing size as a ratio
      ext: String,              # TBD
    )
  end
end