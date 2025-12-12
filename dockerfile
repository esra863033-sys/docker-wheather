# Resmi Nginx imajı
FROM nginx:alpine

# Statik dosyaları container içine kopyala
COPY index.html /usr/share/nginx/html/index.html
COPY style.css /usr/share/nginx/html/style.css
COPY script.js /usr/share/nginx/html/script.js

# Nginx default ayarları zaten bu dizini kullanır.
EXPOSE 80

# Container çalıştığında Nginx başlar
CMD ["nginx", "-g", "daemon off;"]
