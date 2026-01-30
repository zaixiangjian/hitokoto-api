FROM node:20-slim

WORKDIR /app

# 禁用 husky（关键！）
ENV HUSKY=0

COPY package.json package-lock.json* ./

RUN npm install --legacy-peer-deps --omit=dev

COPY . .

ENV NODE_ENV=production
EXPOSE 8000

CMD ["npm", "run", "start"]
