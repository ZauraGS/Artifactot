class_name BankDetails extends ArtifactsClasses

var slots: int
var expansions: int
var next_expanion_cost: int
var gold: int

func _init(data: Dictionary) -> void:
	slots = data["slots"]
	expansions = data["expansions"]
	next_expanion_cost = data["next_expanion_cost"]
	gold = data["gold"]
