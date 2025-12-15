extends Node

func request(method: HTTPClient.Method, url: String, header: PackedStringArray = [], body: Dictionary = {}) -> Response:
	var http_request: HTTPRequest = HTTPRequest.new()
	add_child(http_request)

	var new_body: String = JSON.stringify(body)
	var error: Error = http_request.request(url, header, method, new_body)
	if error != OK:
		push_error("[%s] An error occurred in the HTTP request: %s" % [error, url])

	var data: Array[Variant] = await http_request.request_completed
	var response: Response = Response.new(data)
	http_request.queue_free()
	return response


func GET(url: String, header: PackedStringArray = [], body: Dictionary = {}) -> Response:
	return await request(HTTPClient.METHOD_GET, url, header, body)


func POST(url: String, header: PackedStringArray = [], body: Dictionary = {}) -> Response:
	return await request(HTTPClient.METHOD_POST, url, header, body)
