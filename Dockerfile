FROM node:18
WORKDIR /app
COPY backend ./backend
COPY public ./public
COPY javacore ./javacore
COPY package*.json ./
RUN npm install -g nodemon && npm install
CMD ["nodemon", "backend/app.js"]