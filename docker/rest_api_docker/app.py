from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hello, this is your Python REST server!'

@app.route('/caleb')
def caleb():
    return 'Hello, Caleb! Great work.'

@app.route('/ron')
def ron():
    return 'Hello, Ron! Thanks for stopping by my REST API.'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
