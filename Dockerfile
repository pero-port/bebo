# Use official Nginx image as base
FROM nginx:alpine

# Remove default nginx HTML
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML file from repo to Nginx folder
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
