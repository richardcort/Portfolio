# Nuxt Minimal Starter

Look at the [Nuxt documentation](https://nuxt.com/docs/getting-started/introduction) to learn more.

## Setup

Make sure to install dependencies:

```bash
# npm
npm install

# pnpm
pnpm install

# yarn
yarn install

# bun
bun install
```

## Development Server

Start the development server on `http://localhost:3000`:

```bash
# npm
npm run dev

# pnpm
pnpm dev

# yarn
yarn dev

# bun
bun run dev
```

## Production

Build the application for production:

```bash
# npm
npm run build

# pnpm
pnpm build

# yarn
yarn build

# bun
bun run build
```

Locally preview production build:

```bash
# npm
npm run preview

# pnpm
pnpm preview

# yarn
yarn preview

# bun
bun run preview
```

Check out the [deployment documentation](https://nuxt.com/docs/getting-started/deployment) for more information.

## Docker Support

### Prerequisites
- Docker and Docker Compose installed.
- Create `.env.development` and `.env.production` files (use templates if available).

### Development Environment
Runs the app in development mode with hot-reloading. The app will be available at `http://localhost:3000`.

```bash
docker-compose up --build
```

### Production Environment
Runs the app in production mode (optimized build). The app will be available at `http://localhost:80`.

```bash
docker-compose -f docker-compose.prod.yml up --build
```
