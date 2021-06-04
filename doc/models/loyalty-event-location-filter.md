
# Loyalty Event Location Filter

Filter events by location.

## Structure

`Loyalty Event Location Filter`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `location_ids` | `Array<String>` | Required | The [location](/doc/models/location.md) IDs for loyalty events to query.<br>If multiple values are specified, the endpoint uses<br>a logical OR to combine them. |

## Example (as JSON)

```json
{
  "location_ids": [
    "location_ids0"
  ]
}
```

