from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/business-logic', methods=['GET'])
def business_logic():
    return jsonify({"message": "Business logic executed"})

if __name__ == '__main__':
    app.run(debug=True)