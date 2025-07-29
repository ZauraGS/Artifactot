extends Node

func _ready() -> void:
	var test: Dictionary = await Artifacts.get_account_details()
	print(test)
	print("finished")
