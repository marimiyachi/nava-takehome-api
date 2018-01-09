# README

Nava takehome exercise API

This REST API has one endpoint `/measures` and requires a `measure_id` to be
specified in the JSON body. All other keys are permitted and not validated.

For example, you can POST the following body to `/measures`:
```
{
  "measure_id": "123A",
  "field1": "foo",
  "field2": "bar"
}
```
You can fetch this resource by calling GET `/measures/123A`. You can alter this
resource by calling PUT `/measures/123A` and delete this resource by calling
DELETE `/measures/123A`. No two measures can have the same measure ID.

# Setup
`rails db:migrate`

# TODOs
* Make validation message more helpful when measure_id is omitted
