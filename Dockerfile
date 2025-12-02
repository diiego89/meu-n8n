FROM node:18

# Instala n8n globalmente
RUN npm install -g n8n@1.81.1

# Cria diretório de dados
RUN mkdir -p /data
WORKDIR /data

ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_LOG_LEVEL=info

EXPOSE 5678

CMD ["n8n"]
