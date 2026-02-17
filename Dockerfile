FROM nginx:alpine

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy built files to nginx folder
COPY dist/ /usr/share/nginx/html/

# Expose port 80 inside container
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
