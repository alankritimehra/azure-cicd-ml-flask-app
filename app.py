from flask import Flask, jsonify, request

app = Flask(__name__)


@app.route("/")
def home():
    return "Azure CI/CD Flask ML App is running!"


@app.route("/predict", methods=["POST"])
def predict():
    data = request.get_json()
    chas = data["CHAS"]["0"]
    rm = data["RM"]["0"]
    tax = data["TAX"]["0"]
    ptratio = data["PTRATIO"]["0"]
    b_value = data["B"]["0"]
    lstat = data["LSTAT"]["0"]

    prediction = rm * 3 + chas * 2 - lstat * 0.1 + ptratio * 0.05 + b_value * 0.001 - tax * 0.002

    return jsonify({"prediction": [prediction]})


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
