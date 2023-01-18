=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.214.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'date'
require 'time'

module Plaid
  class PlaidErrorType
    INVALID_REQUEST = "INVALID_REQUEST".freeze
    INVALID_RESULT = "INVALID_RESULT".freeze
    INVALID_INPUT = "INVALID_INPUT".freeze
    INSTITUTION_ERROR = "INSTITUTION_ERROR".freeze
    RATE_LIMIT_EXCEEDED = "RATE_LIMIT_EXCEEDED".freeze
    API_ERROR = "API_ERROR".freeze
    ITEM_ERROR = "ITEM_ERROR".freeze
    ASSET_REPORT_ERROR = "ASSET_REPORT_ERROR".freeze
    RECAPTCHA_ERROR = "RECAPTCHA_ERROR".freeze
    OAUTH_ERROR = "OAUTH_ERROR".freeze
    PAYMENT_ERROR = "PAYMENT_ERROR".freeze
    BANK_TRANSFER_ERROR = "BANK_TRANSFER_ERROR".freeze
    INCOME_VERIFICATION_ERROR = "INCOME_VERIFICATION_ERROR".freeze
    MICRODEPOSITS_ERROR = "MICRODEPOSITS_ERROR".freeze

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
