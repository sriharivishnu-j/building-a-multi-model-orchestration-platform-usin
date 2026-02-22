from langchain import Chain

class LangChainOrchestrator:
    def __init__(self):
        self.chain = Chain()

    def execute_chain(self, input_data):
        try:
            result = self.chain.run(input_data)
            return result
        except Exception as e:
            raise RuntimeError(f"Error executing chain: {e}")