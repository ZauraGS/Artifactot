class_name Response extends RefCounted

var result: int = 0
var response_code: int = 0
var headers: PackedStringArray = []
var body: PackedByteArray = []

func _init(array: Array) -> void:
	if array.size() != 4:
		push_error("Improper Array Size")
	result = array[0]
	response_code = array[1]
	headers = array[2]
	body = array[3]
