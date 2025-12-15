class_name Artifacts extends RefCounted

const BASE_URL: String = "https://api.artifactsmmo.com/"
const HEADER: PackedStringArray = [
	"Accept: application/json",
	"Authorization: Bearer " + Env.TOKEN
]

#region Server Details

static func get_server_details() -> ServerDetails:
	var response: Response = await API.GET(BASE_URL + "/", HEADER, {})
	if not response:
		return null
	return ServerDetails.new(response.data)

#endregion


#region Account Details

static func get_bank_details() -> BankDetails:
	var response: Response = await API.GET(BASE_URL + "my/details", HEADER, {})


#endregion
