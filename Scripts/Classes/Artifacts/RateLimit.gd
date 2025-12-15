class_name RateLimit extends ArtifactsClasses

var type: String
var value: String

func _init(data: Dictionary) -> void:
	type = data["type"]
	value = data["value"]
