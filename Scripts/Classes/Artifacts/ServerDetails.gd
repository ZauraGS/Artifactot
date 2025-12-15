class_name ServerDetails extends ArtifactsClasses

var version: String
var server_time: String
var max_level: int
var max_skill_level: int
var characters_online: int
var season: Season
var rate_limits: Array[RateLimit]

func _init(data: Dictionary) -> void:
	version = data["version"]
	server_time = data["server_time"]
	max_level = data["max_level"]
	max_skill_level = data["max_skill_level"]
	characters_online = data["characters_online"]
	season = Season.new(data["season"])
	for rate_limit: Dictionary in data["rate_limits"]:
		rate_limits.append(RateLimit.new(rate_limit))

func get_server_time_dict() -> Dictionary:
	return Time.get_datetime_dict_from_datetime_string(server_time, false)

func _to_string() -> String:
	return "Server Details: %s" % version
