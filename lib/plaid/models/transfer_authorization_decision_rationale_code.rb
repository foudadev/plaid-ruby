=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.457.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.1.0

=end

require 'date'
require 'time'

module Plaid
  class TransferAuthorizationDecisionRationaleCode
    NSF = "NSF".freeze
    RISK = "RISK".freeze
    TRANSFER_LIMIT_REACHED = "TRANSFER_LIMIT_REACHED".freeze
    MANUALLY_VERIFIED_ITEM = "MANUALLY_VERIFIED_ITEM".freeze
    ITEM_LOGIN_REQUIRED = "ITEM_LOGIN_REQUIRED".freeze
    PAYMENT_PROFILE_LOGIN_REQUIRED = "PAYMENT_PROFILE_LOGIN_REQUIRED".freeze
    ERROR = "ERROR".freeze
    MIGRATED_ACCOUNT_ITEM = "MIGRATED_ACCOUNT_ITEM".freeze
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
