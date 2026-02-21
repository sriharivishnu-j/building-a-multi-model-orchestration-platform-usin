from fastapi import FastAPI
import logging
from langchain import Orchestrator

app = FastAPI()

# Initialize orchestrator
orchestrator = Orchestrator()

@app.get('/')
async def root():
    return {'message': 'Welcome to the AI Orchestration Platform'}

@app.post('/orchestrate')
async def orchestrate_task(task: dict):
    try:
        result = orchestrator.orchestrate(task)
        return {'result': result}
    except Exception as e:
        logging.error(f"Orchestration error: {str(e)}")
        return {'error': 'Failed to orchestrate task'}