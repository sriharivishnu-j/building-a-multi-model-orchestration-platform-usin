from fastapi import FastAPI, HTTPException
from langchain import LangChain
import logging

app = FastAPI()
lang_chain = LangChain()

logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

@app.get("/orchestrate")
async def orchestrate_models(data: dict):
    try:
        result = lang_chain.invoke_chain(data)
        logger.info("Orchestration successful", extra={"result": result})
        return result
    except Exception as e:
        logger.error("Orchestration failed", exc_info=True)
        raise HTTPException(status_code=500, detail=str(e))