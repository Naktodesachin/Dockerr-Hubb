# Use Node.js base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files and install dependencies (if you have any)
COPY package*.json ./
RUN npm install || true

# Copy all code
COPY . .

# Expose port
EXPOSE 3000

# Default command
CMD ["node", "index.js"]
