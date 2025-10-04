FROM ollama/ollama:latest
WORKDIR /app
COPY start.sh ./start.sh
RUN chmod +x start.sh
EXPOSE 11434
ENTRYPOINT ["/app/start.sh"]