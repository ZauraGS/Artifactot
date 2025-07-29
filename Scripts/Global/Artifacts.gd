class_name Artifacts extends RefCounted


static func get_account_details() -> Dictionary:
	var response: Response = await API.request("my/details", HTTPClient.METHOD_GET)
	if response:
		var json = JSON.new()
		json.parse(response.body.get_string_from_utf8())
		return json.data["data"] as Dictionary
	return {}
