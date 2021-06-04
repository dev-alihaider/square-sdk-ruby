
# Create Customer Request

Defines the body parameters that can be included in a request to the
`CreateCustomer` endpoint.

## Structure

`Create Customer Request`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `idempotency_key` | `String` | Optional | The idempotency key for the request.	For more information, see<br>[Idempotency](https://developer.squareup.com/docs/working-with-apis/idempotency). |
| `given_name` | `String` | Optional | The given name (that is, the first name) associated with the customer profile. |
| `family_name` | `String` | Optional | The family name (that is, the last name) associated with the customer profile. |
| `company_name` | `String` | Optional | A business name associated with the customer profile. |
| `nickname` | `String` | Optional | A nickname for the customer profile. |
| `email_address` | `String` | Optional | The email address associated with the customer profile. |
| `address` | [`Address Hash`](/doc/models/address.md) | Optional | Represents a physical address. |
| `phone_number` | `String` | Optional | The 11-digit phone number associated with the customer profile. |
| `reference_id` | `String` | Optional | An optional second ID used to associate the customer profile with an<br>entity in another system. |
| `note` | `String` | Optional | A custom note associated with the customer profile. |
| `birthday` | `String` | Optional | The birthday associated with the customer profile, in RFC 3339 format. The year is optional. The timezone and time are not allowed.<br>For example, `0000-09-21T00:00:00-00:00` represents a birthday on September 21 and `1998-09-21T00:00:00-00:00` represents a birthday on September 21, 1998.<br>You can also specify this value in `YYYY-MM-DD` format. |

## Example (as JSON)

```json
{
  "address": {
    "address_line_1": "500 Electric Ave",
    "address_line_2": "Suite 600",
    "administrative_district_level_1": "NY",
    "country": "US",
    "locality": "New York",
    "postal_code": "10003"
  },
  "email_address": "Amelia.Earhart@example.com",
  "family_name": "Earhart",
  "given_name": "Amelia",
  "note": "a customer",
  "phone_number": "1-212-555-4240",
  "reference_id": "YOUR_REFERENCE_ID"
}
```

