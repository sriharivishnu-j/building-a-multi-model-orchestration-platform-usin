import React from 'react';
import { QueryClient, QueryClientProvider } from 'react-query';

const queryClient = new QueryClient();

function App() {
  return (
    <QueryClientProvider client={queryClient}>
      <div className="App">
        <h1>Multi-Model Orchestration Platform</h1>
      </div>
    </QueryClientProvider>
  );
}

export default App;