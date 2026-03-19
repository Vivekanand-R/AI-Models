# MCP-RAG Assistant (Containerized)

Local-first RAG with:
- Ollama (Llama 3.1 8B)
- Chroma vector store
- MCP-style tool server exposing retrieval tools
- FastAPI `/ask` endpoint returning answers with citations

## Quickstart

```bash
cp .env.example .env
docker compose up --build -d

# First time only: pull the model inside the ollama container
docker compose exec ollama ollama pull llama3.1:8b

# Ingest sample docs into Chroma
docker compose exec app bash -lc "./scripts/ingest_sample.sh"
```

Ask a question:
```bash
curl -s http://localhost:8000/ask   -H "Content-Type: application/json"   -d '{"question":"What does this repo demonstrate?"}'
```

## Services

- **app** (FastAPI): `http://localhost:8000`
  - `POST /ask`
- **mcp-server** (tool server): `http://localhost:8765`
  - `GET /tools/list_sources`
  - `POST /tools/search_documents`


##  RAG Flow

      1. src/rag/ingest.py → reads files from data/ folder
      2. It uses iter_text_files() → finds .txt and .md files
      3. Then read_text() → loads file content
      4. Then simple_chunk() (chunking.py) → splits text into chunks
      5. Then embeddings are created using SentenceTransformer
      6. Finally stored in ChromaDB collection (vector database)
      7. If data/ is empty → nothing is ingested → retrieval returns empty → LLM gets no context
      8. Stored location → CHROMA_DIR=/app/.chroma inside container
      9. Format → NOT files → stored as vector embeddings + metadata + text
      10. Each chunk = {id, text, embedding, metadata} in ChromaDB


# Hosting

1. Local Hosting, 2. Cloud Hosting

1.Local Hosting

   <img width="1767" height="417" alt="image" src="https://github.com/user-attachments/assets/a4be81e1-1618-4f23-9ee5-7b7b09dc9823" />


## Notes

This repo is intentionally minimal and lightweight execution friendly. Further to be extended with:
- Hybrid retrieval (BM25 + vectors)
- Reranking
- Eval harness + prompt regression tests
- Proper MCP protocol bindings (depending on MCP host)
