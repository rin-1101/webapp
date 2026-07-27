# Basic Dockerized Flask Web App

This template provides a simple web app with:
- Python 3.14 backend
- Flask app with a login page
- Any entered credentials proceed to a main page
- Docker support

## Run locally

1. Create a virtual environment:
   ```bash
   python3.14 -m venv .venv
   .\.venv\Scripts\activate
   pip install -r requirements.txt
   python app.py
   ```

2. Open http://localhost:5000

## Run with Docker

```bash
docker compose up --build
```
