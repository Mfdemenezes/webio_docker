# Usar a imagem oficial do Nginx
FROM nginx:alpine

# Apagar a página default do Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copiar o conteúdo do site para a pasta padrão do Nginx
COPY . /usr/share/nginx/html

# Expor a porta HTTP
EXPOSE 80

# O comando padrão já inicia o Nginx
