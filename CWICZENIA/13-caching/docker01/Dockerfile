# Prosty obraz nginx z Alpine
FROM nginx:1.27-alpine

# Usuwamy domyślne pliki z katalogu HTML (opcjonalne)
RUN rm -rf /usr/share/nginx/html/*

# Kopiujemy nasz index.html do katalogu serwowanego przez nginx
COPY index.html /usr/share/nginx/html/index.html

# Domyślny port nginx
EXPOSE 80

# Standardowy entrypoint nginx z obrazu bazowego
CMD ["nginx", "-g", "daemon off;"]
