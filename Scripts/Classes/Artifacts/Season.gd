class_name Season extends ArtifactsClasses

var name: String
var number: int
var start_date: String
var badges: Array[SeasonBadge]
var skins: Array[SeasonSkin]

func _init(data: Dictionary) -> void:
	name = data["name"]
	number = data["number"]
	start_date = data["start_date"]
	for badge: Dictionary in data["badges"]:
		badges.append(SeasonBadge.new(badge))
	for skin: Dictionary in data["skins"]:
		skins.append(SeasonSkin.new(skin))

func _to_string() -> String:
	return "%s Season" % name
