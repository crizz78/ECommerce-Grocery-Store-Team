from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello():
    return "¡Servidor Flask y Docker funcionado correctamente!"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)