# NodeJS Application with Docker

This project contains a Dockerized version of the [Example NodeJS App]([https://github.com](https://github.com/DevOps2-Fundamentals/example-app-nodejs-backend-react-frontend)). The Dockerfile automates the environment setup, repository cloning, and application deployment.

## Prerequisites

- **Docker** installed on your machine.
- **Internet connection** (to clone the repository and download Node.js image).

## How it works

The Dockerfile follows these steps:
1. **Base Image:** Uses `node:14-alpine` for a lightweight runtime environment.
2. **Dependencies:** Installs `git` to fetch the source code.
3. **Cloning:** Downloads the latest code from the GitHub repository.
4. **Build:** Runs `npm install` and `npm run build` to prepare the application.
5. **Execution:** Starts the web server on container boot.

## Getting Started

Follow these steps to build and run the application from scratch:

### 1. Build the Docker Image
Navigate to the directory containing the `Dockerfile` and run:
```bash
docker build -t my-app .
```

### 2. Run the Container
Start the container and map the internal port to your local port **4321**:
```bash
docker run -d --name node-server -p 4321:3000 application
```

### 3. Verify the Installation
Once the container is running, you can access the application by visiting:
[http://localhost:4321](http://localhost:4321)
