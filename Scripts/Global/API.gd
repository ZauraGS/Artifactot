extends Node

const URL: String = "https://api.artifactsmmo.com/"
const HEADER: PackedStringArray = [
	"Accept: application/json",
	"Authorization: Bearer " + Env.TOKEN
]

func request(url: String, method: HTTPClient.Method, body: Dictionary = {}) -> Response:
	var http_request: HTTPRequest = HTTPRequest.new()
	add_child(http_request)

	var new_body: String = JSON.new().stringify(body)
	var error: Error = http_request.request(URL + url, HEADER, method, new_body)
	if error != OK:
		push_error("[%s] An error occurred in the HTTP request: %s" % [error, URL + url])

	var data = await http_request.request_completed
	var response: Response = Response.new(data)
	http_request.queue_free()
	return response
