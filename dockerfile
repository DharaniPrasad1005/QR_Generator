# Use official nginx image as the base
FROM nginx:alpine

# Remove the default nginx config if you want (optional)
RUN rm /etc/nginx/conf.d/default.conf

# Copy a basic nginx config
COPY nginx.conf /etc/nginx/conf.d/

# Copy the repo content into the nginx html directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]

