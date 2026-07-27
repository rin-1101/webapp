from flask import Flask, redirect, render_template, request, url_for

app = Flask(__name__)


@app.route("/", methods=["GET"])
def home():
    return render_template("login.html")


@app.route("/login", methods=["POST"])
def login_submit():
    username = request.form.get("username", "").strip()
    password = request.form.get("password", "").strip()

    # Accept any input and continue to the main page.
    return redirect(url_for("main", username=username or "Guest"))


@app.route("/main")
def main():
    username = request.args.get("username", "Guest")
    return render_template("main.html", username=username)


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
