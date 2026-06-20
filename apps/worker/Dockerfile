FROM node:22-slim
RUN apt-get update && apt-get install -y ffmpeg
WORKDIR /app
COPY . .
CMD ["node","worker.js"]
