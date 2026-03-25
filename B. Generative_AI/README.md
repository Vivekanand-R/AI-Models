# Generative AI, LLM and MLops Concepts

This repository is structured with the goal of building a Model-as-a-Service (MaaS) ecosystem. It serves as a comprehensive playground for experimenting, designing, and comparing modern AI/ML architectures.

    A. Model Experiments
    B. MLops Architectures
    C. Architecture Scinarios
    D. Core Concepts & framworks
    E. Architecture Comparisions

**LLM-MCP combinationatory Stacks:**
      1. GPT-4o + OpenAI API + LangChain + Pinecone + MCP
      2. Claude 3.5 Sonnet + Anthropic API + LangGraph + Weaviate + MCP
      3. Gemini 1.5 Pro + Vertex AI + BigQuery + MCP
      4. GPT-4 / Phi + Azure OpenAI Service + Azure Cognitive Search + LangChain
      5. Llama 3 70B + vLLM + Milvus + MCP
      6. Phi-3 Mini + Ollama + Chroma + MCP
      7. Mistral 7B + Ollama + Open WebUI + Chroma + MCP
      8. Llama 3 8B + LM Studio + LlamaIndex
      9. Mistral / Phi + llama.cpp + AutoGen + Chroma + MCP
      10. TinyLlama + llama.cpp + FAISS + Haystack

**Enterprise / GPU cluster oriented:-**
    1. Nemotron + NVIDIA Triton + NeMo + Vector DB + MCP (NVIDIA Stack)
    2. Llama 3 70B + vLLM + Ray Serve + Milvus + MCP (Meta Enterprise Stack)
    3. GPT-4o + Azure OpenAI Service + Azure Kubernetes Service + Azure Cognitive Search + MCP (OpenAI Enterprise-style Stack)
    4. Gemini 1.5 Pro + Vertex AI + Kubernetes + BigQuery + MCP (Google Deep Enterprise Stack)


**Architectural Scinarios**

1. Azure Focused:- Design an enterprise agent that combines MCP for tool orchestration, PPM (planning & policy management), and RAC (retrieval-augmented cognition) to support real-time decision-making.
The agent connects to structured data via Azure SQL Database and unstructured knowledge through Azure AI Search for RAC pipelines. It integrates external context using web/API tools and internal documents from SharePoint and OneDrive via MCP connectors. For reasoning and execution, it leverages code execution tools (Python), orchestration with Azure Machine Learning, and vector storage like Pinecone. Finally, it closes the loop with action tools such as Microsoft Teams notifications, email automation, and business APIs for end-to-end autonomous workflows.
    
2. GCP Focused:- Design an agent combining MCP (tool orchestration), PPM (planning & policy), and RAC (retrieval-augmented cognition) for enterprise intelligence. The agent connects structured data via BigQuery and unstructured knowledge using Vertex AI Search for RAC pipelines. It ingests documents and context from Google Drive and Google Docs through MCP connectors.For reasoning and execution, it uses Python tools, orchestration with Vertex AI, and vector storage like AlloyDB or embeddings APIs. It completes workflows via action tools such as Google Chat, Gmail automation, and external APIs for fully autonomous decision-making.




