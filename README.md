# projet_INF808

## How to run the project

### 1. Dependencies

- [Docker](https://docs.docker.com/get-docker/)
- [Taskfile](https://taskfile.dev/installation/)

### 2. Run the project

- Clone the repository
- Run the following command in the root directory of the project:

```bash
task setup
task up
```

**Notes:**

- The first time you run the project, it will take a few minutes to download the necessary Docker images.
- You only have to run the `task setup` command once. It will generate the necessary certificates for the ELK cluster.
- If you don't want to run the filebeat loging module you can replace the `task up` command with the `task elk` command. It will start the ELK stack without the filebeat module.

### 3. Access the Kibana dashboard

- Open your web browser and go to [https://localhost:5601](https://localhost:5601)
- The default credentials are:
  - Username: `elastic`
  - Password: `changeme`
