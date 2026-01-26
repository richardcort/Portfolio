#
FROM node:22-alpine
WORKDIR /app

# Keep NODE_ENV for runtime
ENV NODE_ENV=production
ENV PORT=3000

EXPOSE 3000

# Install dependencies, copy source, build, and run preview server
COPY package*.json ./
RUN npm install

# Copy app sources
COPY . .

# Build the Nuxt app
RUN npm run build

# Use Nuxt's preview server to serve the built app
CMD ["npm", "run", "preview"]

