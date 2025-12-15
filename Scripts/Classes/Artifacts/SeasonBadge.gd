class_name SeasonBadge extends ArtifactsClasses

var code: String
var description: String
var required_points: int

func _init(data: Dictionary) -> void:
	code = data["code"]
	description = data["description"]
	required_points = data["required_points"]
