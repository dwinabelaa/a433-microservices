# membuat node js versi 14 alpine
FROM node:14-alpine

# Menentukan bahwa working directory untuk container adalah /app.
WORKDIR /app

# Menyalin seluruh source code ke working directory di container.
COPY . /app

# Menentukan agar aplikasi berjalan dalam production mode dan menggunakan container bernama item-dbsebagai database host.
ENV NODE_ENV=production DB_HOST=item-db

# Menginstal dependencies untuk production dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build

CMD ["npm", "start"]

EXPOSE 8080