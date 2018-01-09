# README

Nava takehome exercise API

This REST API has one endpoint `/measures` and requires a `measure_id` to be
specified in the JSON body. All other keys are permitted and not validated.

# TODOs
* Uniqueness constraint on measure_id/created_at
* Add created_at, updated_at to the response body
* Allow querying by created_at
