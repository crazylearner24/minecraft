from fastapi import FastAPI
from fastapi.responses import HTMLResponse
from pydantic import BaseModel

app = FastAPI()

class Payload(BaseModel):
    name: str
    message: str

@app.get("/", response_class=HTMLResponse)
async def home():
    with open("index.html", "r", encoding="utf-8") as f:
        return f.read()

@app.get("/health")
async def health():
    return {
        "status": "healthy",
        "service": "github-demo-server"
    }

@app.get("/hello")
async def hello():
    return {
        "message": "Hello Venkie!"
    }

@app.post("/echo")
async def echo(data: Payload):
    return {
        "received": True,
        "name": data.name,
        "message": data.message
    }
