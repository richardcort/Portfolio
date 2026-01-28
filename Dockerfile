# Base stage
FROM node:22-alpine AS base
WORKDIR /app
# Install dependencies into a temp directory to leverage caching
COPY package*.json ./
RUN npm install && npm cache clean --force

# Development stage
FROM base AS development

# In dev, we mount the volume so we don't copy source code here regularly, 
# but we need it for the initial build if not mounted.
COPY . .
CMD ["npm", "run", "dev"]

# Production stage
FROM base AS production

COPY . .
RUN npm run build
EXPOSE 3000
CMD ["npm", "run", "preview"]
