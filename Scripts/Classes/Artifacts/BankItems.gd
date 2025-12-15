class_name BankItems extends ArtifactsClasses

var data: Array[SimpleItem]
var total: int
var page: int
var size: int
var pages: int

func _init(dict: Dictionary) -> void:
	for item: Dictionary in dict["data"]:
		data.append(SimpleItem.new(item))
	total = dict["total"]
	page = dict["page"]
	size = dict["size"]
	pages = dict["pages"]
