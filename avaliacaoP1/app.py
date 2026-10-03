from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def home():
    return render_template("index.html")

@app.route("/claude")
def claude():
    return render_template("claude.html")

@app.route("/gemini")
def gemini():
    return render_template("gemini.html")

@app.route("/gpt")
def gpt():
    return render_template("gpt.html")



app.add_url_rule('/imgs/<path:filename>', endpoint='imgs', view_func=app.send_static_file)
def photo():
    return render_template('index.html')