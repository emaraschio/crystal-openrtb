module OpenRTB
  class Error < ::Exception; end

  #Bid Errors
  class InvalidBidWithoutIdError < Error; end

  class InvalidBidWithoutImpressionsError < Error; end

  #Bid Request Errors
  class InvalidBidRequestWithoutIdError < Error; end

  class InvalidBidRequestWithoutImpressionsError < Error; end

  #Bid Responses Errors
  class InvalidBidResponseWithoutIdError < Error; end

  class InvalidBidResponseWithoutSeatBidsError < Error; end

  # 5.19 No-Bid Reason Codes
  class NoBidReasonUnknownError < Error; end

  class NoBidReasonTechnicalError < Error; end
end