#1 pilih bahan dasar
# node js versi 18 dengan alpinse sebagai base image
FROM node:18-alpine 

# 2 siapkan direktori kerja
WORKDIR /app

# 3. salin package.json dan package-lock.json dalam kontainer
COPY package.json .

# 4. install dependencies
RUN npm install

# 5. saling source code 
COPY . .

# 6. EXPOSE - dokumentasi port yang digunakan (opsiional tapi rekomendasi)
EXPOSE 3000

# 7. cmd perintah yang dijalankan saat COTAINER START
CMD ["npm", "start"]