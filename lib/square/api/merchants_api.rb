module Square
  # MerchantsApi
  class MerchantsApi < BaseApi
    def initialize(config, http_call_back: nil)
      super(config, http_call_back: http_call_back)
    end

    # Returns `Merchant` information for a given access token.
    # If you don't know a `Merchant` ID, you can use this endpoint to retrieve
    # the merchant ID for an access token.
    # You can specify your personal access token to get your own merchant
    # information or specify an OAuth token
    # to get the information for the  merchant that granted you access.
    # If you know the merchant ID, you can also use the
    # [RetrieveMerchant]($e/Merchants/RetrieveMerchant)
    # endpoint to get the merchant information.
    # @param [Integer] cursor Optional parameter: The cursor generated by the
    # previous response.
    # @return [ListMerchantsResponse Hash] response from the API call
    def list_merchants(cursor: nil)
      # Prepare query url.
      _query_builder = config.get_base_uri
      _query_builder << '/v2/merchants'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        'cursor' => cursor
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.get(
        _query_url,
        headers: _headers
      )
      OAuth2.apply(config, _request)
      _response = execute_request(_request)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_response.raw_body)
      _errors = APIHelper.map_response(decoded, ['errors'])
      ApiResponse.new(
        _response, data: decoded, errors: _errors
      )
    end

    # Retrieve a `Merchant` object for the given `merchant_id`.
    # @param [String] merchant_id Required parameter: The ID of the merchant to
    # retrieve. If the string "me" is supplied as the ID, then retrieve the
    # merchant that is currently accessible to this call.
    # @return [RetrieveMerchantResponse Hash] response from the API call
    def retrieve_merchant(merchant_id:)
      # Prepare query url.
      _query_builder = config.get_base_uri
      _query_builder << '/v2/merchants/{merchant_id}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'merchant_id' => { 'value' => merchant_id, 'encode' => true }
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = config.http_client.get(
        _query_url,
        headers: _headers
      )
      OAuth2.apply(config, _request)
      _response = execute_request(_request)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_response.raw_body)
      _errors = APIHelper.map_response(decoded, ['errors'])
      ApiResponse.new(
        _response, data: decoded, errors: _errors
      )
    end
  end
end