class_name SimpleItem extends ArtifactsClasses

var code: String
var quantity: int

func _init(data: Dictionary) -> void:
	code = data["code"]
	quantity = data["quantity"]

func _to_string() -> String:
	return "SimpleItem: %s (x%d)" % [code, quantity]
