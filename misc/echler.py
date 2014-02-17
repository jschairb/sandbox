from flask import Flask, jsonify, request

app = Flask(__name__)

@app.route('/', methods=['DELETE', 'GET', 'POST', 'PUT'])
def root_url():
    return jsonify(diagnostics())

def diagnostics():
    body = {
        'data': request.data,
        'headers': dict(request.headers),
        'method': request.method,
        'path': request.path,
        'query_string': request.query_string,
        'referrer': request.referrer,
        'request': dir(request),
        'url': request.url
    }
    return body

if __name__ == "__main__":
    app.run(debug=True,
            host='0.0.0.0')
