
# Retrieve Dispute Response

Defines fields in a `RetrieveDispute` response.

## Structure

`Retrieve Dispute Response`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `errors` | [`Array<Error Hash>`](/doc/models/error.md) | Optional | Information about errors encountered during the request. |
| `dispute` | [`Dispute Hash`](/doc/models/dispute.md) | Optional | Represents a dispute a cardholder initiated with their bank. |

## Example (as JSON)

```json
{
  "dispute": {
    "amount_money": {
      "amount": 2000,
      "currency": "USD"
    },
    "brand_dispute_id": "100000282394",
    "card_brand": "VISA",
    "created_at": "2018-10-18T15:59:13.613Z",
    "dispute_id": "XDgyFu7yo1E2S5lQGGpYn",
    "disputed_payments": [
      {
        "payment_id": "6Ee10wvqhfipStz297mtUhBXvaB"
      }
    ],
    "due_at": "2018-11-01T00:00:00.000Z",
    "reason": "NO_KNOWLEDGE",
    "state": "LOST",
    "updated_at": "2018-10-18T15:59:13.613Z"
  }
}
```

