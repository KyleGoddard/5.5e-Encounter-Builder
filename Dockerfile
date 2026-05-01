FROM nginx:alpine

# Copy the app files
COPY index.html /usr/share/nginx/html/index.html
COPY creatures_v2.json /usr/share/nginx/html/creatures_v2.json

# Custom nginx config for clean headers and gzip
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
