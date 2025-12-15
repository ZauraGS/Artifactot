extends Node

func _ready() -> void:
	var test: Variant = await Artifacts.get_server_details()
	print(test)
	print("finished")
