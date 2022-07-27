import base64
import urllib.request, urllib.parse, urllib.error

def encode(data):
	data = base64.b64encode(data)
	return urllib.parse.quote_plus(data)[::-1]

def decode(data):
	data = data.decode('utf-8')
	data = urllib.parse.unquote(data[::-1])
	return base64.b64decode(data)
