=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.78.2

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.0

=end

require 'date'
require 'time'

module Plaid
  class PaystubVerificationStatus
    PAYSTUB_VERIFICATION_STATUS_UNKNOWN = "PAYSTUB_VERIFICATION_STATUS_UNKNOWN".freeze
    PAYSTUB_VERIFICATION_STATUS_VERIFIED = "PAYSTUB_VERIFICATION_STATUS_VERIFIED".freeze
    PAYSTUB_VERIFICATION_STATUS_FRAUDULENT = "PAYSTUB_VERIFICATION_STATUS_FRAUDULENT".freeze
    NULL = "null".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      # We do not validate that the value is one of the enums set in the OpenAPI
      # file because we want to be able to add to our list of enums without
      # breaking this client library.
      value
    end
  end

end
