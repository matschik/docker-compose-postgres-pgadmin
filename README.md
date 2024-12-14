# Docker Compose for PostgreSQL and pgAdmin 🐳

> A Docker Compose setup for running a PostgreSQL database and pgAdmin, a web-based administration tool for PostgreSQL.

## Features 🌟

- **🚀 Easy Setup**: One-command launch for both PostgreSQL and pgAdmin.
- **🖥️ Pre-configured pgAdmin**: Quick access to pgAdmin with pre-set environment variables and automatic server configuration via `entrypoint.sh`.
- **🔑 No pgAdmin Login Page**: When accessing pgAdmin, you are automatically logged in with the credentials you set in the `.env` file.
- **⚙️ Customizable**: Easy to customize with your environment variables via the `.env` file.

## Prerequisites 🛠️

- Docker and Docker Compose installed on your machine.
- Basic knowledge of Docker and PostgreSQL.

## Getting Started 🚀

1. **Clone the Repository**

   ```sh
   git clone https://github.com/matschik/docker-compose-postgres-pgadmin.git
   cd docker-compose-postgres-pgadmin
   ```

2. **Set Up Environment Variables**

   Copy the `.env.example` file to a new file named `.env`.

   ```sh
   cp .env.example .env
   ```

   Then edit the `.env` file to fill in your PostgreSQL and pgAdmin settings.

3. **Start Docker Compose**

   Run the following command to start the services defined in `compose.yaml`:

   ```sh
   docker compose up -d
   ```

4. **Access pgAdmin**

   Open your web browser and go to `http://localhost:[PGADMIN_PORT]`. Log in using the credentials you set in the `.env` file.

## Contents 📁

- `compose.yaml`: A Docker Compose file to set up PostgreSQL and pgAdmin.
- `.env.example`: An example environment file. Rename this to `.env` and fill in your desired values before starting your containers.
- `entrypoint.sh`: A custom entrypoint script for pgAdmin to set up server connections automatically.

## ⚠️ Production Use Caution ⚠️

The pgAdmin setup provided in this repository, particularly with the use of the `entrypoint.sh` script, is intended for development or testing purposes and is not recommended for production environments. For production deployments, consider more secure and robust configuration practices.

## Contributing 🤝

Contributions to the repository are welcome. Please fork the repository and submit a pull request with your changes.

## License 📜

This project is licensed under the MIT License.
