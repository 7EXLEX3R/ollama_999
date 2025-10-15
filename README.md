### ollama_999

plug-and-play LLM runtime 

- minimal Ollama Docker container with auto model pull & TCP streaming
- when up, exposes **$HOST/api/chat** endpoint, ready to chat with
- uses by default the **finalend/hermes-3-llama-3.1** model, which allows for more uncensored conversations
- for built-in model's system customization and chat history - https://github.com/7EXLEX3R/chat_999

#### SYSTEM
- Docker

#### RUN
```sh
sh bin/run.sh
# or
docker run -p 11434:11434 7exlex3r/ollama_999:latest
# or with specified custom model
docker run -p 11434:11434 -e OLLAMA_MODEL=llama2:latest 7exlex3r/ollama_999:latest
```

#### TEST
```
curl -N -X POST "http://localhost:11434/api/chat" -H "Content-Type: application/json" -d "{\"model\": \"finalend/hermes-3-llama-3.1\", \"messages\": [{\"role\": \"user\", \"content\": \"sup?\"}]}"
```

#### ENV
- OLLAMA_MODEL = finalend/hermes-3-llama-3.1