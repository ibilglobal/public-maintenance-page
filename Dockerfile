# Use a minimal Nginx base image
FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Remove the default Nginx index page
RUN rm -f ./*

# Copy the maintenance page to Nginx's HTML directory
COPY index.html .

# Expose port 80
EXPOSE 8501

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
