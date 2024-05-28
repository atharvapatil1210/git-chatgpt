# Three-tier Application Dockerization

This repository contains the necessary configuration files to dockerize a three-tier open-source application, including a frontend, backend, and database.

## Project Structure
├── frontend
│ ├── Dockerfile
│ └── ... (other frontend files)
├── backend
│ ├── Dockerfile
│ └── ... (other backend files)
├── docker-compose.yml
└── README.md


## Prerequisites

- Docker
- Docker Compose

## Docker Images

- Frontend: React app
- Backend: Node.js/Express app
- Database: PostgreSQL

## Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/yourusername/your-repo-name.git
cd your-repo-name
```

### 2. Set up environment variables

Create a .env file in the root directory of your project and set the required environment variables. Example:

POSTGRES_USER=myuser
POSTGRES_PASSWORD=mypassword
POSTGRES_DB=mydatabase


### 3. Build and run the containers

docker-compose up --build


### 4. Access the application

    Frontend: http://localhost:3000
    Backend: http://localhost:5000

### Dockerfiles

### Frontend Dockerfile (React)

```bash
# Use an official Node.js runtime as the base image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the remaining application code to the working directory
COPY . .

# Expose port 3000 to the outside world
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]

# Use an official Node.js runtime as the base image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the remaining application code to the working directory
COPY . .

# Expose port 3000 to the outside world
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]
```

### Backend Dockerfile (Node.js/Express)

```bash
# Use an official Node.js runtime as the base image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the remaining application code to the working directory
COPY . .

# Expose port 5000 to the outside world
EXPOSE 5000

# Command to run the application
CMD ["node", "app.js"]
```

### Database Dockerfile (PostgreSQL)

For the database, we use the official PostgreSQL image from Docker Hub. No custom Dockerfile is needed.
Docker Compose Configuration

### The docker-compose.yml file defines the services, networks, and volumes for the three-tier application.

```bash

version: '3.8'

services:
  frontend:
    build: ./frontend
    ports:
      - "3000:3000"
    depends_on:
      - backend

  backend:
    build: ./backend
    ports:
      - "5000:5000"
    depends_on:
      - database

  database:
    image: postgres:latest
    environment:
      POSTGRES_USER: ${POSTGRES_USER}
      POSTGRES_PASSWORD: ${POSTGRES_PASSWORD}
      POSTGRES_DB: ${POSTGRES_DB}
    ports:
      - "5432:5432"

```

### Stopping the application

To stop the running containers, use:

```bash 
docker-compose down
```

### Cleaning up

To remove all containers, networks, and volumes created by docker-compose up:

```bash
docker-compose down --volumes
```

### License

This project is licensed under the MIT License - see the LICENSE file for details.

```bash
This `README.md` file provides a comprehensive guide on how to set up, build, and run the three-tier application using Docker and Docker Compose. It includes the necessary Dockerfile examples for each tier and instructions for managing the Docker environment.
```