from flask import Flask, Response

app = Flask(__name__)

@app.route('/')
def hello_world():
    return Response('Hey, we have Flask in a Docker container! I told you it would work!')

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')

