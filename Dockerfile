# using node 14 alpine image
FROM node:14-alpine
# Workdir on '/app' directory
WORKDIR /app
# Copy all to '/app' directory
COPY . .
# Set environment variable
ENV NODE_ENV=production DB_HOST=item-db
# Install dependencies and build
RUN npm install --production --unsafe-perm && npm run build
# Expose port 8080 
EXPOSE 8080
# Run the app
CMD ["npm", "start"]
