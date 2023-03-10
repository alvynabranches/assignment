from fastapi import FastAPI
from fastapi.responses import JSONResponse

app = FastAPI()

@app.get("/")
def index():
    return JSONResponse({"status": "ok"}, 200)

