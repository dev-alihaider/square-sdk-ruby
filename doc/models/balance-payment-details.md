
# Balance Payment Details

Reflects the current status of a balance payment. Contains only non-confidential information.

## Structure

`Balance Payment Details`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_id` | `String` | Optional | The ID of the account used to fund the payment. |
| `status` | `String` | Optional | The balance payment’s current state. The state can be COMPLETED or FAILED. |

## Example (as JSON)

```json
{
  "account_id": "account_id2",
  "status": "status8"
}
```

