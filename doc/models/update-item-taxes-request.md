
# Update Item Taxes Request

## Structure

`Update Item Taxes Request`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `item_ids` | `Array<String>` | Required | IDs for the CatalogItems associated with the CatalogTax objects being updated. |
| `taxes_to_enable` | `Array<String>` | Optional | IDs of the CatalogTax objects to enable. |
| `taxes_to_disable` | `Array<String>` | Optional | IDs of the CatalogTax objects to disable. |

## Example (as JSON)

```json
{
  "item_ids": [
    "H42BRLUJ5KTZTTMPVSLFAACQ",
    "2JXOBJIHCWBQ4NZ3RIXQGJA6"
  ],
  "taxes_to_disable": [
    "AQCEGCEBBQONINDOHRGZISEX"
  ],
  "taxes_to_enable": [
    "4WRCNHCJZDVLSNDQ35PP6YAD"
  ]
}
```

