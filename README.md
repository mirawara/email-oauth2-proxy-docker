# Email OAuth2 Proxy (Dockerized)

This project provides a Dockerized setup for [email-oauth2-proxy](https://github.com/simonrob/email-oauth2-proxy), a lightweight proxy that allows traditional SMTP clients to authenticate with modern email services using OAuth2.

## 📦 Overview

This containerized solution simplifies deployment and setup by packaging the proxy with its configuration via Docker and Docker Compose.

## 🧰 Prerequisites

- Docker
- Docker Compose
- A valid `emailproxy.config` file (you can generate it from the original project's documentation)

## 🚀 Setup Instructions

### 1. Clone this Repository

```bash
git clone https://github.com/mirawara/email-oauth2-proxy-docker
cd email-oauth2-proxy-docker
```

### 2. Prepare Configuration

Place your `emailproxy.config` in the root of this directory. This file contains your service and OAuth2 account configuration.

### 3. Build and Start the Container

```bash
docker-compose up --build
```

This command will:
- Build the Docker image using the provided `Dockerfile`
- Mount `emailproxy.config` inside the container
- Expose the configured port (default: `1587`) to the host port `2525`

## ⚙️ Configuration

The `emailproxy.config` file must be placed in the root directory and mapped inside the container via volume:

```yaml
volumes:
  - ./emailproxy.config:/emailproxy.config
```

This file defines:
- Which email services are supported
- OAuth2 credentials for access
- Internal port used by the proxy (ensure it matches the port mapping)

## 🌐 Ports

- **Host Port:** 2525
- **Container Port:** 1587

You may modify these mappings in `docker-compose.yml` if needed.

## 🧾 License

This project is based on [email-oauth2-proxy](https://github.com/simonrob/email-oauth2-proxy) which is licensed under the Apache 2.0 License. Please refer to their repository for licensing terms.

---

Happy emailing securely 🚀