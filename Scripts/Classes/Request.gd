class_name Response extends RefCounted

var result: int = 0
var response_code: int = 0
var headers: PackedStringArray = []
var body: PackedByteArray = []
var data: Dictionary = {}

func _init(array: Array[Variant]) -> void:
	if array.size() != 4:
		push_error("Improper Array Size")
	result = array[0]
	response_code = array[1]
	headers = array[2]
	body = array[3]

	var json: JSON = JSON.new()
	var error: Error = json.parse(body.get_string_from_utf8())
	if error == OK:
		data = json.data["data"] as Dictionary
